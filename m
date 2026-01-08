Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1371D1D486
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 18:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhkWiEvBJtTYCQDm54DzNbXuCU2QY5H4stKxeGjGovY=; b=0kEndqPvSKVd2S
	kkFQRY0q0tGBmPuVgHRYufhpmIxFn6svgPtAAlbXvNnnlw9LbzeLNeI2DR8rwsmsu2qqiNDZG/1OU
	rpzt+u5ldDxH+MWFNgxuzynUQCw+VS/qttBLZ2RiKwHQrhKHBWZwfvDQ3SHRdfahz1Bmgnm0iST8Y
	PZAeKdioTF1VNvZm2p60eR4uDAKzDqtg0oGmz17ucBOKzzS+jop9NSoAVpY9kHRGGXi/Um6o9Zsbp
	jsMK27DQM9us6YWrR+FXi2eaBFQan6lSj+r8IeuK3AaUnaCFAtfPv2B2bw67NFfFWyThi3+3527Q/
	ApKa7ETSi64SAF52CYMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdugf-00000000bVS-0Km5;
	Thu, 08 Jan 2026 18:24:45 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdugb-00000000bU0-3pJG;
	Thu, 08 Jan 2026 18:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=IUwrWUOIpMj5TVaHyA5w/9OjOinSfTYecOzgun1vdNk=; b=nG
	KcLUILiB/z36vV4/ZAd41y9YeZ/Rnb53VPkMfS0BFeXE2axRKFffQ59bQfpPmdZKGJ8SgJVYlGrlu
	S6pSkCwFSYfZmHsctmkWQcfmd8WSNjbDP2go2kTczdXVNnT/DlDyTozsMFu8igt78DLAlMAer9AYC
	W1LoSctomNwqT78=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vdugR-00205J-PQ; Thu, 08 Jan 2026 19:24:31 +0100
Date: Thu, 8 Jan 2026 19:24:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org,
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com,
	Frank.Li@nxp.com, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <c1425564-9dca-45dc-ac5e-093150a3ff01@lunn.ch>
References: <20260108083641.2119616-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108083641.2119616-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_102441_968962_EFC8D43A 
X-CRM114-Status: GOOD (  15.37  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMDQ6MzY6NDFQTSArMDgwMCwgWHUgWWFuZyB3cm90ZToK
PiBUaGUgQ1IgcG9ydCBpcyBhIHNpbXBsZSAxNi1iaXQgZGF0YS9hZGRyZXNzIHBhcmFsbGVsIHBv
cnQgdGhhdCBpcwo+IHByb3ZpZGVkIGZvciBvbi1jaGlwIGFjY2VzcyB0byB0aGUgY29udHJvbCBy
ZWdpc3RlcnMgaW5zaWRlIHRoZQo+IFVTQiAzLjAgZmVtdG9QSFlbMV0uIFdoaWxlIGFjY2VzcyB0
byB0aGVzZSByZWdpc3RlcnMgaXMgbm90IHJlcXVpcmVkCj4gZm9yIG5vcm1hbCBQSFkgb3BlcmF0
aW9uLCB0aGlzIGludGVyZmFjZSBlbmFibGVzIHlvdSB0byBhY2Nlc3MKPiBzb21lIG9mIHRoZSBQ
SFnigJlzIGRpYWdub3N0aWMgZmVhdHVyZXMgZHVyaW5nIG5vcm1hbCBvcGVyYXRpb24gb3IKPiB0
byBvdmVycmlkZSBzb21lIGJhc2ljIFBIWSBjb250cm9sIHNpZ25hbHMuCj4gCj4gMyBkZWJ1Z2Zz
IGZpbGVzIGFyZSBjcmVhdGVkIHRvIHJlYWQgYW5kIHdyaXRlIGNvbnRyb2wgcmVnaXN0ZXJzLAo+
IGFsbCB1c2UgaGV4YWRlY2ltYWwgZm9ybWF0Ogo+IGN0cmxfcmVnX2Jhc2U6IHRoZSByZWdpc3Rl
ciBvZmZzZXQgdG8gd3JpdGUsIG9yIHRoZSBzdGFydCBvZmZzZXQKPiAgICAgICAgICAgICAgICB0
byByZWFkLgo+IGN0cmxfcmVnX2NvdW50OiBob3cgbWFueSBjb250aW51b3VzIHJlZ2lzdGVycyB0
byBiZSByZWFkLgo+IGN0cmxfcmVnX3ZhbHVlOiByZWFkIHRvIHNob3cgdGhlIGNvbnRpbnVvdXMg
cmVnaXN0ZXJzIHZhbHVlIGZyb20KPiAgICAgICAgICAgICAgICAgdGhlIG9mZnNldCBpbiBjdHJs
X3JlZ19iYXNlLCB0byBjdHJsX3JlZ19iYXNlCj4gICAgICAgICAgICAgICAgICsgY3RybF9yZWdf
Y291bnQgLSAxLCBvbmUgbGluZSBmb3Igb25lIHJlZ2lzdGVyLgo+ICAgICAgICAgICAgICAgICB3
aGVuIHdyaXRlLCBvdmVycmlkZSB0aGUgcmVnaXN0ZXIgYXQgY3RybF9yZWdfYmFzZSwKPiAgICAg
ICAgICAgICAgICAgb25lIHRpbWUgY2FuIG9ubHkgY2hhbmdlIG9uZSAxNmJpdHMgcmVnaXN0ZXIu
Cj4gCj4gTGlua1sxXTogaHR0cHM6Ly93d3cuc3lub3BzeXMuY29tL2R3L2RvYy5waHAvcGh5L3Vz
YjMuMC9mZW10by9waHkveDY1Ml91c2IzX3NzMTRscHBfMThfbnMvNC4wN2EvZHdjX3VzYjMuMF9m
ZW10b3BoeV9zczE0bHBwXzA4VjE4Vl94MV9kYXRhYm9vay5wZGYKClBsZWFzZSBkb24ndCBpZ25v
cmUgbXkgY29tbWVudHMgdG8gVjIuIFRoaW5rIGFib3V0IHRoZSBjb2RlIHNwbGl0CmJldHdlZW4g
dGhlIGdlbmVyaWMgSVAgbGljZW5zZWQgZnJvbSBTeW5vcHN5cyBhbmQgdGhlIHZlbmRvciBzcGVj
aWZpYwpjb2RlIHVzZWQgZm9yIGludGVncmF0aW9uIGludG8gdGhlIFNvQy4gWW91IHdhbnQgdG8g
YXZvaWQgbWFraW5nIGEKbWVzcyB5b3UgbGF0ZXIgbmVlZCB0byBjbGVhbnVwIGJlY2F1c2Ugc29t
ZWJvZHkgZWxzZSBsaWNlbnNlZCB0aGUgc2FtZQpJUCBjb3JlIGZyb20gU3lub3BzeXMsIGFuZCBu
ZWVkIHRvIHB1dCB0aGVpciBvd24gdmVuZG9yIHNwZWNpZmljCmludGVncmF0aW9uIGNvZGUgYXJv
dW5kIHRoZSBnZW5lcmljIGNvZGUuCgogICAgQW5kcmV3CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

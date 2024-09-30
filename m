Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA0DCF6491
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 07:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwyDyGfw6FGeCe4zuiwYrXD4AGq7/usLv+Ezp1tSFIM=; b=E2y9a2yxdST/oW
	jQulkLa7QSaawxWerqrcRZwuwWrOaaij8w19KTRk/MSSTS6f9Hk7klT4qDn3xYihVMdwY6kqQvprU
	nm6Na5Mw+i+D0n2c6RTUXEMXrIlg+qFJ3y/CT4+sWnR7YFsBUPASl9ew7ex1X/ccuH291aY9ca/jl
	3s3gV3w/tkBARHQ17CKCH6o/0Ox2LV9BXmIoezs1uiX0SDDaBJmi/6O6K7duqww80XUfyZBjp/fyN
	pRAlTHd0Yhq6tBzjS8DXEHiJiADoz4264nKdmNsD4yypktwquMxalmYZ+caiJRQx6MVZE/Z+TwpoQ
	iZ2llB6kGt4eTXyjgPCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svAnG-0000000GASM-0ZRE;
	Mon, 30 Sep 2024 07:26:06 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svAnD-0000000GARd-2WEd
	for linux-phy@lists.infradead.org;
	Mon, 30 Sep 2024 07:26:05 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e137183587so321589a91.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Sep 2024 00:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727681162; x=1728285962; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XiYNvrHNwoSiNsSeCUdLp/SxlfKq9ylhEZCoyBEobJ4=;
        b=gtPuw1BYAmKhQoJJHI6xNniP1f1W8MAjXtkp/Wxf9ZrzVZ37IkR1jobhh83K/Xs7pN
         AiJxc0esfTAGjrn9Fi5NBqXSMqt4H/IqVCVinAuZrUQz8nGpzov1D15bGwk8xV1Z+yfz
         AX/uraauCAGz0UkKhqE3e+OZr99SYdYVF2GTp0IATyjrQpSnXW+lR4KbU0DPwFHlNxAj
         qs+DgxTfqML7CbaptRugxJiRJ1llUj+kSmLCtMx0cc06/4tBrWw0nj3Ko9zCc/xHbBG3
         tLMCcVY1PNOfacoXWSO6S+KLWTIKDguHwTkpRyFgq+ZctGYrqDBtqZHo8AoHIx4NQFsB
         PqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727681162; x=1728285962;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XiYNvrHNwoSiNsSeCUdLp/SxlfKq9ylhEZCoyBEobJ4=;
        b=Z44yY2em+Oo7dRTlMYwElyZmQuUzSsA0V0Ekbv3froVAzUVybFkI/zFo7+68Elde0U
         /myJyLCxMcxpVk8oj/RkqkWIMtXwTNbi44yy+fG9ONTh1JoPz9+iuBIddpTPqAsp0HpV
         rdsxG55pp6TU+dAo8N33Qupt5A4pIdHk777SqYDs03O5PSM6XzD22G+8Nu/qHF+eUTeX
         JgzZDLOlR4wqikh2HSyb0kh0IluO57ipzbW4kixes6GHzTH6fn5Yl/hpxb3KP2+2aAQd
         rpGx3fy1QHTrrDLieuqfZ67aLmDkVd0iJdr9DCysoG34Qpi9Ua86zXhMfJZq5vlHPOiC
         MUsA==
X-Forwarded-Encrypted: i=1; AJvYcCWGl+VPxURgCD74tUD/MkYiIiC3Fm9IciI2UxMwNhP89a+yBXV7+uevN9hkKlBOr2juXqkETrO5LkY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGkarPq1VAKDHZpQFQcVhPn71LTiArbFrCi5YWDlfLjNp9lGcT
	r7bWRr1qKFt893q75FZn2frWLTMa2KH66n/Cy7olMRyEqhkUJDIfEzDtjzOK6A==
X-Google-Smtp-Source: AGHT+IH0ZhL7ulk9Zz/JIeZ0eAXcKPWm10c/BmyJgbeW6CC9X3LbTa4pQ4KY597t8qxTugpYl6gXJw==
X-Received: by 2002:a17:90a:3486:b0:2d8:89ad:a67e with SMTP id 98e67ed59e1d1-2e0b88903famr14733476a91.1.1727681162073;
        Mon, 30 Sep 2024 00:26:02 -0700 (PDT)
Received: from thinkpad ([36.255.17.150])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e08c35fed5sm6239192a91.0.2024.09.30.00.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 00:26:01 -0700 (PDT)
Date: Mon, 30 Sep 2024 09:25:53 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
Message-ID: <20240930072553.n2tj5jjtltowswbf@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
 <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
 <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
 <20240925080724.vgkgmnqc44aoiarv@thinkpad>
 <1419ba07-5163-4126-8869-2213eea6c492@quicinc.com>
 <fb40afe3-eb27-4136-8942-26a40fb395a7@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb40afe3-eb27-4136-8942-26a40fb395a7@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_002603_675205_912FFC0B 
X-CRM114-Status: GOOD (  40.89  )
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

T24gVGh1LCBTZXAgMjYsIDIwMjQgYXQgMDE6MTk6MThQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOS8yNi8yMDI0IDExOjI4IEFNLCBRaWFuZyBZdSB3cm90ZToKPiA+IAo+ID4gT24g
OS8yNS8yMDI0IDQ6MDcgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gT24g
V2VkLCBTZXAgMjUsIDIwMjQgYXQgMTE6NDc6MDJBTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6Cj4g
PiA+ID4gT24gOS8yNC8yMDI0IDExOjE3IFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPiA+ID4g
PiBPbiBUdWUsIFNlcCAyNCwgMjAyNCBhdCAwMzo1MDoyMVBNICswMjAwLCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1ZSwgU2VwIDI0LCAyMDI0IGF0IDAzOjE0
OjQzQU0gLTA3MDAsIFFpYW5nIFl1IHdyb3RlOgo+ID4gPiA+ID4gPiA+IFgxRTgwMTAwIGhhcyBQ
Q0llIHBvcnRzIHRoYXQgc3VwcG9ydCB1cCB0byBHZW40IHg4Cj4gPiA+ID4gPiA+ID4gYmFzZWQg
b24gaGFyZHdhcmUgSVAKPiA+ID4gPiA+ID4gPiB2ZXJzaW9uIDEuMzguMC4KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiBDdXJyZW50bHkgdGhlIG9wc18xXzlfMCB3aGljaCBpcyBiZWluZyB1
c2VkIGZvcgo+ID4gPiA+ID4gPiA+IFgxRTgwMTAwIGhhcyBjb25maWdfc2lkCj4gPiA+ID4gPiA+
ID4gY2FsbGJhY2sgdG8gY29uZmlnIEJERiB0byBTSUQgdGFibGUuIEhvd2V2ZXIsIHRoaXMgY2Fs
bGJhY2sgaXMgbm90Cj4gPiA+ID4gPiA+ID4gcmVxdWlyZWQgZm9yIFgxRTgwMTAwIGJlY2F1c2Ug
aXQgaGFzIHNtbXV2MyBzdXBwb3J0Cj4gPiA+ID4gPiA+ID4gYW5kIEJERiB0byBTSUQgdGFibGUK
PiA+ID4gPiA+ID4gPiB3aWxsIGJlIG5vdCBwcmVzZW50Lgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiA+IEhlbmNlIGFkZCBzdXBwb3J0IGZvciBYMUU4MDEwMCBieSBpbnRyb2R1Y2luZyBhIG5l
dwo+ID4gPiA+ID4gPiA+IG9wcyBhbmQgY2ZnIHN0cnVjdHVyZXMKPiA+ID4gPiA+ID4gPiB0aGF0
IGRvbid0IHJlcXVpcmUgdGhlIGNvbmZpZ19zaWQgY2FsbGJhY2suIFRoaXMKPiA+ID4gPiA+ID4g
PiBjb3VsZCBiZSByZXVzZWQgYnkgdGhlCj4gPiA+ID4gPiA+ID4gZnV0dXJlIHBsYXRmb3JtcyBi
YXNlZCBvbiBTTU1VdjMuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE9vcHMuLi4gSSBjb21w
bGV0ZWx5IG92ZXJsb29rZWQgdGhhdCB5b3UgYXJlIG5vdCBhZGRpbmcKPiA+ID4gPiA+ID4gdGhl
IFNvQyBzdXBwb3J0IGJ1dAo+ID4gPiA+ID4gPiBmaXhpbmcgdGhlIGV4aXN0aW5nIG9uZSA6KCBT
b3JyeSBmb3Igc3VnZ2VzdGluZyBhIGNvbW1pdAo+ID4gPiA+ID4gPiBtZXNzYWdlIHRoYXQgY2hh
bmdlZAo+ID4gPiA+ID4gPiB0aGUgY29udGV4dC4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEZv
ciB0aGlzLCB5b3UgY2FuIGhhdmUgc29tZXRoaW5nIGxpa2U6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiAiUENJOiBxY29tOiBGaXggdGhlIG9wcyBmb3IgWDFFODAxMDAgU29DCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiBYMUU4MDEwMCBTb0MgaXMgYmFzZWQgb24gU01NVXYzLCBoZW5jZSBpdCBk
b2Vzbid0IG5lZWQKPiA+ID4gPiA+ID4gdGhlIEJERjJTSUQgbWFwcGluZwo+ID4gPiA+ID4gPiBw
cmVzZW50IGluIHRoZSBleGlzdGluZyBjZmdfMV85XzAgb3BzLiBUaGlzIGlzIGZpeGVkIGJ5Cj4g
PiA+ID4gPiA+IGludHJvZHVjaW5nIG5ldyBvcHMKPiA+ID4gPiA+ID4gJ29wc18xXzM4XzAnIGFu
ZCBjZmcgJ2NmZ18xXzM4XzAnIHN0cnVjdHVyZXMuIFRoZXNlIGFyZQo+ID4gPiA+ID4gPiBleGFj
dGx5IHNhbWUgYXMgdGhlCj4gPiA+ID4gPiA+IDFfOV8wIG9uZXMsIGJ1dCB0aGV5IGRvbid0IGhh
dmUgdGhlICdjb25maWdfc2lkKCknCj4gPiA+ID4gPiA+IGNhbGxiYWNrIHRoYXQgaGFuZGxlcyB0
aGUKPiA+ID4gPiA+ID4gQkRGMlNJRCBtYXBwaW5nIGluIHRoZSBoYXJkd2FyZS4gVGhlc2UgbmV3
IHN0cnVjdHVyZXMKPiA+ID4gPiA+ID4gY291bGQgYWxzbyBiZSB1c2VkIGJ5IHRoZQo+ID4gPiA+
ID4gPiBmdXR1cmUgU29DcyBtYWtpbmcgdXNlIG9mIFNNTVV2My4iCj4gPiA+ID4gPiBEb24ndCB3
ZSBuZWVkIHNvbWV0aGluZyBsaWtlIHRoaXMgZm9yIHNjODI4MHhwIGFuZCBvdGhlcgo+ID4gPiA+
ID4gcGxhdGZvcm1zIHVzaW5nCj4gPiA+ID4gPiBTTU1VdjMgYXMgd2VsbD8KPiA+ID4gPiDCoEZy
b20gd2hhdCBJIGtub3csIHNjODI4MHhwIGFuZCBvdGhlciBxY29tIHBsYXRmb3JtcyBhcmUgbm90
Cj4gPiA+ID4gdXNpbmcgU01NVXYzLgo+ID4gPiBzYzgyODB4cCBpbmRlZWQgaGFzIFNNTVV2MyBm
b3IgUENJZSwgYnV0IEknbSBub3Qgc3VyZSBob3cgaXQgaXMKPiA+ID4gY29uZmlndXJlZC4gU28K
PiA+ID4gbm90IGNvbXBsZXRlbHkgc3VyZSB3aGV0aGVyIHdlIGNhbiBhdm9pZCB0aGUgbWFwcGlu
ZyB0YWJsZSBvciBub3QuCj4gPiA+IAo+ID4gPiBRaWFuZywgcGxlYXNlIGNoZWNrIHdpdGggdGhl
IGh3IHRlYW0gYW5kIGxldCB1cyBrbm93Lgo+ID4gU3VyZSwgd2lsbCB1cGRhdGUgb25jZSBJIGdl
dCBhbnkgcmVzcG9uc2UgZnJvbSBodyB0ZWFtLgo+IEhXIHRlYW0gY29uZmlybWVkIHNjODI4MHhw
IHVzZXMgc21tdjMgZm9yIFBDSWUgYW5kIGRvZXNuJ3Qgc3VwcG9ydCBCREYyU0lECj4gbWFwLgo+
IAo+IEJlc2lkZXMsIEFiZWwgb25jZSBnb3QgY29uZmlybWF0aW9uIGZyb20gSm9lIHRoYXQgd2Ug
YWxzbyBuZWVkIHRvIGRpc2FibGUKPiBMMHMgZm9yIFgxRTgwMTAwLiBTbyBjYW4gd2UgdXNlIGNm
Z19zYzgyODB4cCBmb3IgYm90aCBYMUU4MDEwMCBhbmQgU0M4MjgwWFAKPiBhbmQgY2hhbmdlIGl0
cyBvcHMgdG8gb3BzXzFfMzhfMD8KPiAKClNvdW5kcyBnb29kLiBCdXQsIE9QUyBuYW1pbmcgc2hv
dWxkIGJlIGJhc2VkIG9uIHRoZSBiYXNlbGluZSB2ZXJzaW9uIGkuZS4sIGl0CnNob3VsZCBiZSBi
YXNlZCBvbiB0aGUgSVAgdmVyc2lvbiBvZiBTQzgyODBYUCBhbmQgcmV1c2VkIGJ5IFgxRTgwMTAw
LiBOb3QgdGhlCm90aGVyIHdheSBhcm91bmQuCgotIE1hbmkKCj4gVGhhbmtzLAo+IFFpYW5nCj4g
PiAKPiA+IFRoYW5rcywKPiA+IFFpYW5nCj4gPiA+IAo+ID4gPiAtIE1hbmkKPiA+ID4gCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

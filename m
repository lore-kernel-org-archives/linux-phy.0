Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0EDC79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3eBzz4ghQCmXYa+ierh9jdc/R76UhnX5Kmd9zma52A=; b=04B2fv4pfe1JjY
	d6wENN0q6dnKEjoDXy5VT2hnhXJogQygBzrxQtldhNLH6EOykTUyfTmQyHJY0HmDFax1DgFSgdbFb
	qjwC8OXan4pNa+dJFCBfrvdwG4mh5idn2XHQV8ZoHeVIkGu5O1+/LzXawjemMUA0FQvVbINCkNSTt
	AQnSC2KYZ4QmobcwmKHxP28bJwGFK+J/jcpl6JVIjWSI2evMUnqScsplHvQFf5vXlYN1AChsEi3u7
	JYuyc7FgmQ5lBF1lUCbAThtMg/ECKwfOTnDZEaWUIFaPZbO22t+m2ALXXHGxq3q1XPdZKCEvDkLNI
	YFE5sc3AkKN/5itJ1YCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ty6-0000000FtIL-3L5c;
	Fri, 11 Sep 2026 05:38:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ty5-0000000FtI3-0fO7
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:38:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 94345409C4;
	Fri, 11 Sep 2026 05:38:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C43EE1F000FF;
	Fri, 11 Sep 2026 05:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789105112;
	bh=hi/sAfcZebnb6L2iDczSy+R8ulaoBQH7kOjtfHM4/pA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AGgiNDCraZXyIAz8C/b/bklo9OffRBsyFB1OuLCpdtQ3nLuDPxvHEIVeaZNQmb5F2
	 qyaFh1SxR9kv8fiyFdEWL+GnEvHSlEZPvqTrcqRFBPpLRvYC9CCcNnW1L6ye/2QD9w
	 lqZCZ86XSsmUNWzcNi3hbavISVU2taS6lEln5oRNMgREf5rHzW6zxi7WsaLC8sAX9+
	 4XGpLb8JfeZoVLWIYQq3UVFOHiO5nq51+gD1gOiC6YmMbXq1ZQPVN4xE6HLI/jRm0V
	 HJgz1B7yroHlT1DrS20LnD9lF8BneT6h4JkSVOyBs1wWeSBYrXtLKIg8sPcAKe7lPl
	 Bn2/ImwIgyPIg==
Date: Fri, 11 Sep 2026 07:38:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 8/9] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY
 init and configure sequences
Message-ID: <4pqee6uuymjb5ek65a4uhtfgr2dm3jpwv5j6gj4s44qokjx2r5@kqlbwljmahw6>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-8-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-8-ff22e5150538@oss.qualcomm.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzE6MDFQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBVcGRhdGUgcW1wX3Y4X2RwX2F1eF9pbml0KCk6Cj4gLSBBZGQgQ0xLX0ZXRF9DT05GSUdf
MSBpbml0aWFsaXphdGlvbiAoMHgzZikgYmVmb3JlIHBvd2VyLWRvd24gY29udHJvbAo+IC0gUmVw
bGFjZSBQU1JfUFdSRE4gd2l0aCBMQU5FXzBfMV9QV1JETiBhbmQgTEFORV8yXzNfUFdSRE4gaW4g
UERfQ1RMCj4gICB0byBjb3JyZWN0bHkgcG93ZXIgZG93biB0aGUgZGF0YSBsYW5lcwo+IC0gQ29y
cmVjdCBCSUFTX0VOX0NMS0JVRkxSX0VOIHZhbHVlIGZyb20gMHgxYyB0byAweDE3Cj4gCj4gVXBk
YXRlIHFtcF92NF9jb25maWd1cmVfZHBfdHgoKToKPiAtIENvcnJlY3QgZGVmYXVsdCBUWF9FTVBf
UE9TVDFfTFZMIHZhbHVlIGZyb20gMHgyMCB0byAweDJiCj4gCj4gVXBkYXRlIHFtcF92OF9jb25m
aWd1cmVfZHBfcGh5KCk6Cj4gLSBDb3JyZWN0IDItbGFuZSBhbmQgNC1sYW5lIGRyaXZlciBlbmFi
bGUgdmFsdWVzIHRvIDB4MzAgKHdhcyAweDEwLzB4MzQpCj4gLSBBZGQgQ0xLQlVGX0VOQUJMRSAo
MHg4NykgcHJvZ3JhbW1pbmcgZm9yIGJvdGggVFggbGFuZXMgYmVmb3JlIGRyaXZlcgo+ICAgZW5h
YmxlIHdyaXRlcwo+IC0gQWRkIFRTWU5DX09WUkQgc2VxdWVuY2UgKDB4MDMgLT4gMHgyMyAtPiAw
eDIyIC0+IDB4M2UpIGFuZAo+ICAgTEFMQl9SRVNFVF9UU1lOQ19FTl9DVFJMICgweDBhKSBwcm9n
cmFtbWluZyBmb3IgcHJvcGVyIFRTWU5DIGhhbmRsaW5nCj4gLSBGaXggUVBIWV9EUF9QSFlfU1RB
VFVTIHBvbGwgdG8gY2hlY2sgQklUKDApIGluc3RlYWQgb2YgQklUKDEpCj4gLSBSZXBsYWNlIHBv
c3QtbG9jayBUWF9EUlZfTFZML1RYX0VNUCB3cml0ZXMgd2l0aCB0d28gQ09NX0NNTl9TVEFUVVMK
PiAgIHBvbGxzIChCSVQoMCkgYW5kIEJJVCgxKSkgdG8gcHJvcGVybHkgdmVyaWZ5IFBMTCBsb2Nr
IGNvbXBsZXRpb24KPiAKClNhbWUgY29tbWVudCBhcyBvdGhlciBwYXRjaGVzLiBXaGF0IGlzc3Vl
IGRvZXMgdGhpcyBwYXRjaCBmaXg/IEFueSBlcnJvciBsb2c/CgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

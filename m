Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771A2C5CFC1
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 01:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAkNufuCJcxc/vmeRQVOm7V/zll3KVT8NFO0NOfm+Tc=; b=iyU75xVJyIi5u0
	I17f2y3RY0OSrI1Umc36g5FFujuoMPr8Zdy8GfhdA9yWooCBTuTmu+5Efqy2szea2SkiPUNnSff4o
	/qnZb3Fpx+I7nOIHVAqDy5wc+enS3OVDc5vciW6vSSptF7E6YDJE9L/MuXveZC6+KYiG8jMzZiUMh
	8HFBVpPHvexRbH85vX0hd4J3fb4jn59tPFwYFCJBJ7zDuUmmG9BOSoUuZZYpo9x/v3xZyBq+MTc6J
	45r2hDQthaWZOiGYFekFDYssFNUh1VmZMAZULR/Dhdqa4OemOr3Dc9zpDpmh1NT3BxQzvVRddFbiK
	VMcOV2yZ+LfMqhIot25A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxSl-0000000FBgK-0Z3b;
	Wed, 12 Aug 2026 01:08:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxSj-0000000FBgC-3Ndu
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 01:08:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 41B0741425;
	Wed, 12 Aug 2026 01:08:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712B71F000E9;
	Wed, 12 Aug 2026 01:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786496937;
	bh=w+M5bOqN+dcIrzZc9eSaBRVwTBzszlOoa94Kqow5cPg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Kb3ORulFETU2P9/EplZoOJc2XjiBVeLgrNKDEIttn+ipQ3huUt21XlsSHlz3XKalf
	 kobADTYXCOrKZOZmN5lNmXksayq1CurR7GhTNblI0x65ZM3vLmJFnl4OIgqiIUseZg
	 ERTYL9+Edx7opd7HbAHvid2WVr1IFUxvUn51N9Wf9/V1cujsEFOXif40YmX2Ixfms9
	 eFLUgA8HJo3VAgQH0/gzB052uLwOtrybtk1TVEWwICY/Jur4Jml7FEHDBTGPnPMsXh
	 kPvz54P3H6IneXIVOr/tuXId8PFqliZGkrtxAOlSCy99u4ZMjFxBI50wLjNiZGXwgI
	 dbUgIR4+PpzUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] dt-bindings: usb: dwc3: Document ST STM32MP2 DWC3
 xHCI USB controller
To: "Marek Vasut" <marex@nabladev.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260812010157.1772849-6-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-6-marex@nabladev.com>
Date: Wed, 12 Aug 2026 01:08:55 +0000
Message-Id: <20260812010856.712B71F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyByZWZl
cmVuY2UgdG8gRFdDMyBjb3JlIHNjaGVtYSBjYXVzZXMgdmFsaWQgVVNCIHByb3BlcnRpZXMgdG8g
YmUgcmVqZWN0ZWQuCi0gW0xvd10gVGhlIGByZXNldHNgIHByb3BlcnR5IGlzIG1pc3NpbmcgYSBg
bWF4SXRlbXNgIGNvbnN0cmFpbnQuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggNS84XSBkdC1i
aW5kaW5nczogdXNiOiBkd2MzOiBEb2N1bWVudCBTVCBTVE0zMk1QMiBEV0MzIHhIQ0kgVVNCIGNv
bnRyb2xsZXIgLS0tCmNvbW1pdCBkZjg0OTQzNDc2YmY2NzM4NGUxNjYyNDY2OGFhYWRiYWJhNjc4
NzViCkF1dGhvcjogTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4KCmR0LWJpbmRpbmdz
OiB1c2I6IGR3YzM6IERvY3VtZW50IFNUIFNUTTMyTVAyIERXQzMgeEhDSSBVU0IgY29udHJvbGxl
cgoKVGhlIFNUIFNUTTMyTVAyIFNvQyBjb250YWlucyBzaW5nbGUgaW5zdGFuY2Ugb2YgRFdDMyBV
U0IgY29udHJvbGxlciB3aXRoCmdsdWUgbG9naWMgd3JhcHBlciBhcm91bmQgaXQgY29udHJvbGxl
ZCBieSBzeXNjb24uIERvY3VtZW50IHRoZSBnbHVlCmxvZ2ljIGFuZCBEV0MzIGNvbnRyb2xsZXIu
Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3N0
LHN0bTMybXAyNS1kd2MzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dXNiL3N0LHN0bTMybXAyNS1kd2MzLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMDAuLmUzNzdlZmVmNDM1MDMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9zdCxzdG0zMm1wMjUtZHdjMy55YW1s
Cj4gQEAgLTAsMCArMSwxMDggQEAKClsgLi4uIF0KCj4gKyAgcGh5LW5hbWVzOgo+ICsgICAgbWlu
SXRlbXM6IDEKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiB1c2IyLXBoeQo+ICsgICAg
ICAtIGNvbnN0OiB1c2IzLXBoeQo+ICsKPiArICByZXNldHM6Cj4gKyAgICBtaW5JdGVtczogMQoK
W1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyByZXNldHMgZGVmaW5pdGlvbiBuZWVkIGEgbWF4SXRl
bXMgY29uc3RyYWludD8KCldpdGhvdXQgYW4gdXBwZXIgYm91bmQsIGR0LXNjaGVtYSBhbGxvd3Mg
YW4gYXJiaXRyYXJ5IG51bWJlciBvZiByZXNldCBpdGVtcywKd2hpY2ggbWlnaHQgbGV0IGludmFs
aWQgaGFyZHdhcmUgY29uZmlndXJhdGlvbnMgc2lsZW50bHkgcGFzcyB2YWxpZGF0aW9uLgoKPiAr
Cj4gKyAgc3Qsc3lzY2ZnOgoKWyAuLi4gXQoKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxl
Cj4gKyAgLSByZWcKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIGludGVy
cnVwdHMKPiArICAtIHBoeXMKPiArICAtIHBoeS1uYW1lcwo+ICsgIC0gcmVzZXRzCj4gKyAgLSBz
dCxzeXNjZmcKPiArCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKCltTZXZlcml0eTog
TWVkaXVtXQpXaWxsIHRoaXMgc3RyaWN0IGNvbnN0cmFpbnQgY2F1c2UgdmFsaWQgVVNCIG9yIERX
QzMgY29yZSBwcm9wZXJ0aWVzIHRvIGJlCnJlamVjdGVkPwoKU2luY2UgdGhlIHNjaGVtYSBkb2Vz
IG5vdCBpbmNsdWRlIGEgcmVmZXJlbmNlIHRvIHRoZSBjb3JlIERXQzMgc2NoZW1hIChzdWNoCmFz
IGFsbE9mOiAtICRyZWY6IHNucHMsZHdjMy55YW1sIyksIG9ubHkgdGhlIGV4cGxpY2l0bHkgbGlz
dGVkIHByb3BlcnRpZXMKYXJlIHBlcm1pdHRlZC4KClN0YW5kYXJkIHByb3BlcnRpZXMgbGlrZSBt
YXhpbXVtLXNwZWVkLCB1c2Itcm9sZS1zd2l0Y2gsIG9yIGNoaWxkIG5vZGVzCmludGVuZGVkIGZv
ciB0aGUgRFdDMyBjb3JlIHdpbGwgZmFpbCB2YWxpZGF0aW9uIHdoZW4gY2hlY2tlZC4KCj4gKwo+
ICtleGFtcGxlczoKPiArICAtIHwKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTIwMTAxNTcuMTc3Mjg0OS0xLW1hcmV4QG5hYmxh
ZGV2LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=

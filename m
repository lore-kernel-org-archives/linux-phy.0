Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B79CA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CsXzoqTMnROdhZZHBLSJbpuSX4B2q1Ff4XlS+WabSA=; b=bpYXrnCqobt2lw
	U6loPW91qIwcJL/T3lJs1W0WV893yPeexjeQD0aVYnOz1BDbXzc5AoxEL8mHI5bGJpvxTqSEFazXW
	rM+9mALRW/k3YRGsmgBuRUzT3UhzqRfiZW12LEMdeS/bQcXvq3U5ASteDpOxFYJuuZTyeVTqDuDrO
	HRYvpFgMKsSGVhvl+2FTa5zJw/xtnuwc3zVxU0I1DuFda+yq48+/GxM4IN8OayS90PaRP+yQBebXk
	9g2m+9zZqqxybzPjA+FqaYkHne3iG7rS0Aczs3rtndMBoKDRTuGAac5vVLR39iz77w8/QR2l7/uc3
	R7r99BfVJ421WGuVfjxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELKo-00000001n8y-008S;
	Wed, 07 Oct 2026 06:41:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELKn-00000001n8q-2Qrq
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:41:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 13E9841087;
	Wed,  7 Oct 2026 06:40:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7989D1F0089B;
	Wed,  7 Oct 2026 06:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791355259;
	bh=Pf3NWyRPQ0L09auWXUFmkUX75lTJ6eVPIYX7Gh2FhzI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FhYWwhbv/MivxQqipS5QvCY19Wu90M2LelaZWzZRyhcOk2GpxRX8vob1LAt/WFfbj
	 n/mgPxO5js60SdTkD6Mn/2PXL7iY9AaHbgU2m+XABmRsrLWn3oqyUScqkqZBUeZolo
	 AQQfJdKnNXY9d4WSwuAQis111lnGqQJEb1OvRdk1zwQ8/C6odGb5q4rM+9FHzkPigL
	 6Ewus/p4jUFOtOuV19qTHqcFGO0e2ijcM3WgMQyk+0dVqagfeX7pSEeTE9tlfw+5lT
	 bLccITWPlbHNiaW62UUt7pKW+Z4hyWtdhwaQN5+vZaTKHWFdy7+vinNAFVQJdxaTie
	 28vjkJdOapn/Q==
Message-ID: <sashiko-outbox-162678@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: "Pradeep P V K" <pradeep.pragallapati@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-scsi@vger.kernel.org
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
Date: Wed, 07 Oct 2026 06:40:58 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHRzOiBtaXNzaW5n
IHJlcXVpcmVkIHBvd2VyLWRvbWFpbnMgcHJvcGVydHkgaW4gdWZzX21lbV9waHkKLS0KCmNvbW1p
dCBjYzZlMjE1ZWM3NmM4MGIxNDA4YjAzYTRhNjQxOWRlMWFjMzk1M2QzCkF1dGhvcjogUHJhZGVl
cCBQIFYgSyA8cHJhZGVlcC5wcmFnYWxsYXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBk
dHM6IHFjb206IGdseW11cjogQWRkIFVGUyBub2RlcwoKQWRkIFVGUyBQSFkgYW5kIFVGUyBob3N0
IGNvbnRyb2xsZXIgbm9kZXMgZm9yIEdseW11ciBTb0MuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
Z2x5bXVyLmR0c2kKPiBpbmRleCA2NWEzOThjMGE5OTIwLi40OWVmODliNDFhYWRhIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9nbHltdXIuZHRzaQo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9nbHltdXIuZHRzaQpbIC4uLiBdCj4gQEAgLTQxMDIsNiArNDEw
MiwxMjUgQEAgcm5nOiBybmdAMTBjMzAwMCB7Cj4gIAkJCXJlZyA9IDwweDAgMHgwMTBjMzAwMCAw
eDAgMHgxMDAwPjsKPiAgCQl9Owo+ICAKPiArCQl1ZnNfbWVtX3BoeTogcGh5QDFkODAwMDAgewo+
ICsJCQljb21wYXRpYmxlID0gInFjb20sZ2x5bXVyLXFtcC11ZnMtcGh5IjsKPiArCQkJcmVnID0g
PDB4MCAweDAxZDgwMDAwIDB4MCAweDIwMDA+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZycG1oY2Mg
UlBNSF9DWE9fQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9QSFlfQVVYX0NMSz4sCj4g
KwkJCQkgLyogVUZTIGFuZCBQQ0lFNCBzaGFyZSB0aGUgc2FtZSBjbGtyZWYgKi8KPiArCQkJCSA8
JnRjc3IgVENTUl9QQ0lFXzRfQ0xLUkVGX0VOPjsKPiArCj4gKwkJCWNsb2NrLW5hbWVzID0gInJl
ZiIsCj4gKwkJCQkgICAgICAicmVmX2F1eCIsCj4gKwkJCQkgICAgICAicXJlZiI7Cj4gKwo+ICsJ
CQlyZXNldHMgPSA8JnVmc19tZW1faGMgMD47Cj4gKwkJCXJlc2V0LW5hbWVzID0gInVmc3BoeSI7
Cj4gKwo+ICsJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4g
Kwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07CgpbU2V2ZXJpdHk6IE1lZGl1bV0K
SXMgdGhlIHVmc19tZW1fcGh5IG5vZGUgbWlzc2luZyBhIHBvd2VyLWRvbWFpbnMgcHJvcGVydHk/
CgpUaGlzIG5vZGUgYXBwZWFycyB0byB2aW9sYXRlIHRoZSBxY29tLHNjODI4MHhwLXFtcC11ZnMt
cGh5LnlhbWwgRFQgc2NoZW1hIGJ5Cm9taXR0aW5nIHRoaXMgcmVxdWlyZWQgcHJvcGVydHkuCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYxMDA3LWdseW11cl91ZnNfcWNiX2VuYWJsZW1lbnQtdjMtMC04NGNmNGY4NjE0MTVAb3NzLnF1
YWxjb21tLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=

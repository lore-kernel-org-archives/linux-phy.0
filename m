Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3847CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crEGuYXGUrmMJftar6o0Q6cRZa1bKlpthqFWrRoX20k=; b=tVcWYwWwaDA2pX
	DxJoQm4C9zsXhuyTY//7JLLksNiOrcNbArtqIx1beo4nHs5Vlijf8/j8kA4AfbRzjhE6ra1WffCpt
	qmT61HaQZQ1UJ1ZCSMnsZPCPO9MHM0rNH38nuO1N86em7BB9xC8CcdzU0UV+jJKq4rYiudo9Zfppq
	KcPshWzBLoIQc6Cs2AEyks593O6m5uNrl+T6gA+OeXeYx6kyGAO8Q1Xz7M36fxmcjdcga2Va+aZa0
	OgKIqKcx/A0qYii4TOWoTVJNa68IB/2swDtxsPP0PRTfdt72YSkbF4d/76b+ubJVPj3TK61w5ufUG
	15RSuTzjXxnFNCeXxDPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCJD-00000008CAY-0tkq;
	Thu, 01 Oct 2026 08:38:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCJC-00000008CAQ-10NB
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:38:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ACCCE6022B;
	Thu,  1 Oct 2026 08:38:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCB461F008A4;
	Thu,  1 Oct 2026 08:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790843909;
	bh=VDZyHyKdoQxaDtb/4DumozyI5n+Wmf+3IrC7bJy9wcM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=haGz6lgBsR36TWj3gMtv15tsydDrCAMMtbWAvYJd0EVQB5QXwPBMev7l5G3dUj9zr
	 FZMqc6vmXyIfWxbVXheqRENXPBXOrwRkeCz3GYsuqPG4chs2WsAo9WADDDVu/WWNZ+
	 so3JOWSXiwwZfzehWVYYaY2Iyjal5j7XAduZBwJ3iWlrEjyePIR0m2Gw83kyrXdaL0
	 iIruvGZEr9Cm5U7or1gGdFAjsUmwpg7rYXaYizKb48GtuUGyQQOeeF11IdjgBsr2cV
	 NVDETEz641YgnrWSlQDaKCZCFM2ghi2mPpSIxDHX+DfwLbJmJWavjA/XN2B+LTSCft
	 h011/0Iksibkw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 02/24] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-scsi@vger.kernel.org
In-Reply-To: <20261001-mt8196-ufs-v13-2-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
 <20261001-mt8196-ufs-v13-2-60854adab6d9@collabora.com>
Date: Thu, 01 Oct 2026 08:38:28 +0000
Message-Id: <20261001083828.DCB461F008A4@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHVm
czogbWVkaWF0ZWs6IGJyaXR0bGUgc2NoZW1hIGNvbnN0cmFpbnQgbWlzcmVwcmVzZW50cyBoYXJk
d2FyZSBjbG9ja3MKLS0KCmNvbW1pdCA1MjcwMWE3ZTExMWY3MTAzYjhmODczYzhmZjU4ZGZjZTg3
MmE2NTg2CkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29s
bGFib3JhLmNvbT4KCmR0LWJpbmRpbmdzOiB1ZnM6IG1lZGlhdGVrLHVmczogQ29tcGxldGUgdGhl
IGJpbmRpbmcKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIE1lZGlhdGVrIFVGUyBiaW5kaW5nIHRv
IG1ha2UgaXQgbW9yZSBjb21wbGV0ZSwKcmVtb3ZpbmcgZGVwcmVjYXRlZCBwcm9wZXJ0aWVzIGFu
ZCB1cGRhdGluZyB0aGUgY2xvY2tzIGFuZCByZXNldHMgbGlzdHMuCkl0IGF0dGVtcHRzIHRvIHNl
dCBjbG9jayBjb25zdHJhaW50cyBmb3IgZGlmZmVyZW50IFNvQyBnZW5lcmF0aW9ucyBzdWNoIGFz
Ck1UODE4MywgTVQ4MTkyLCBhbmQgTVQ4MTk1LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9tZWRpYXRlayx1ZnMueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwKPiBpbmRleCAxNWMz
NDdmNWU2NjA0Li45NDVjYjk4NmIwNmI3IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL21lZGlhdGVrLHVmcy55YW1sCgpbIC4uLiBdCgo+
IEBAIC01NCwyOSArOTYsNDEgQEAgYWxsT2Y6Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAg
ICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+IC0gICAgICAgICAgICBlbnVt
Ogo+IC0gICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTk1LXVmc2hjaQo+ICsgICAgICAgICAg
ICBjb25zdDogbWVkaWF0ZWssbXQ4MTgzLXVmc2hjaQo+ICAgICAgdGhlbjoKPiAgICAgICAgcHJv
cGVydGllczoKPiAgICAgICAgICBjbG9ja3M6Cj4gLSAgICAgICAgICBtaW5JdGVtczogOAo+ICsg
ICAgICAgICAgbWF4SXRlbXM6IDEKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgYXJiaXRyYXJp
bHkgcmVzdHJpY3QgTVQ4MTgzIHRvIGEgc2luZ2xlIGNsb2NrLCBpZ25vcmluZyBpdHMgVW5pUHJv
CmFuZCBBRVMgY2xvY2tzPyBCZWNhdXNlIHRoZSBnbG9iYWwgaXRlbXMgbGlzdCBlbmZvcmNlcyBw
b3NpdGlvbmFsIG9yZGVyaW5nLAppZiBhIGRldmljZSB0cmVlIGF0dGVtcHRzIHRvIGFkZCB0aGUg
cGh5c2ljYWxseSBwcmVzZW50IFVGUy1yZWxhdGVkIGNsb2Nrcwpmb3IgdGhpcyBTb0MsIHNjaGVt
YSB2YWxpZGF0aW9uIHdpbGwgcmVqZWN0IHRoZSBjaGFuZ2VzIGR1ZSB0byB0aGlzIG1heEl0ZW1z
CmxpbWl0LgoKPiAgICAgICAgICBjbG9jay1uYW1lczoKPiAgICAgICAgICAgIGl0ZW1zOgo+IC0g
ICAgICAgICAgICAtIGNvbnN0OiB1ZnMKPiAtICAgICAgICAgICAgLSBjb25zdDogdWZzX2Flcwo+
IC0gICAgICAgICAgICAtIGNvbnN0OiB1ZnNfdGljawo+IC0gICAgICAgICAgICAtIGNvbnN0OiB1
bmlwcm9fc3lzY2xrCj4gLSAgICAgICAgICAgIC0gY29uc3Q6IHVuaXByb190aWNrCj4gLSAgICAg
ICAgICAgIC0gY29uc3Q6IHVuaXByb19tcF9iY2xrCj4gLSAgICAgICAgICAgIC0gY29uc3Q6IHVm
c190eF9zeW1ib2wKPiAtICAgICAgICAgICAgLSBjb25zdDogdWZzX21lbV9zdWIKPiAtICAgIGVs
c2U6Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IG1haW4KPiArICAgICAgICBhdmRkMTItY2tidWYt
c3VwcGx5OiBmYWxzZQo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAg
Y29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBjb25zdDog
bWVkaWF0ZWssbXQ4MTkyLXVmc2hjaQo+ICsgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoK
PiAgICAgICAgICBjbG9ja3M6Cj4gLSAgICAgICAgICBtYXhJdGVtczogMQo+ICsgICAgICAgICAg
bWluSXRlbXM6IDMKPiArICAgICAgICAgIG1heEl0ZW1zOiAzCgpbU2V2ZXJpdHk6IExvd10KRG9l
cyB0aGlzIHJlc3RyaWN0IE1UODE5MiB0byAzIGNsb2NrcywgZXhwbGljaXRseSBibG9ja2luZyBw
cm9wZXIgaGFyZHdhcmUKcmVwcmVzZW50YXRpb24/IFNpbmNlIHRoZSBuZXdseSBpbnRyb2R1Y2Vk
IGdsb2JhbCBpdGVtcyBsaXN0IHN0cmljdGx5CmVuZm9yY2VzIHBvc2l0aW9uYWwgb3JkZXJpbmcs
IGEgZGV2aWNlIHdpdGggbWF4SXRlbXM6IDMgaXMgZm9yY2VkIHRvIHByb3ZpZGUKc3BlY2lmaWNh
bGx5ICJtYWluIiwgImFlcyIsIGFuZCAidGljayIuCgpJZiBNVDgxOTIgaGFyZHdhcmUgYWN0dWFs
bHkgaW1wbGVtZW50cyBVRlMgVW5pUHJvIGNsb2NrcywgYXMgZXZpZGVuY2VkIGJ5CnRoaXMgY2xv
Y2sgZGVmaW5pdGlvbiBpbiBkcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ4MTkyLmM6CgppbmZy
YV9jbGtzOgogICAgR0FURV9JTkZSQTIoQ0xLX0lORlJBX1VOSVBST19TWVMsICJpbmZyYV91bmlw
cm9fc3lzIiwgInVmc19zZWwiLCAxMSksCgp3b3VsZG4ndCB0aGlzIHJ1bGUgcHJldmVudCBhY2N1
cmF0ZWx5IGRlc2NyaWJpbmcgdGhlc2UgY2xvY2tzIGluIHRoZSBkZXZpY2UKdHJlZT8KCj4gICAg
ICAgICAgY2xvY2stbmFtZXM6Cj4gLSAgICAgICAgICBpdGVtczoKPiAtICAgICAgICAgICAgLSBj
b25zdDogdWZzCj4gKyAgICAgICAgICBtaW5JdGVtczogMwo+ICsgICAgICAgICAgbWF4SXRlbXM6
IDMKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjEwMDEtbXQ4MTk2LXVmcy12MTMtMC02MDg1NGFkYWI2ZDlAY29sbGFib3JhLmNvbT9w
YXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

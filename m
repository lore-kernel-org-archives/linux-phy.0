Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20544C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 21:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHtQ9JqBn5+URLBP1LwlLYcMlqEzTJvxbn94Kt4zPxc=; b=n8uhdGVgouKPCF
	A1kGbqn+yckAiX/tfE7aVslXP+CEVG/ygC29El2JzUYjwxdof4Almj4pXDyNKJEGNeTwSRfaBdgT0
	PtuJ6UO9ReHirv3ZpMRqABmZeO38ti+XoA+IHoqj1O3MyUcpFDlsBDdex0xXB/wXDmfrDAC6yVeM8
	pqHIgbnEmAPu1BvrMMLMHtC4aCMbVEs/1UBTDZMu2j93j1Bwpe+e5Nc7gyXX9AT+jqy4or/OoIKmW
	5Zfdamjh2f9pXGfT7EbSqz+s56U8++X6NEoaodhjml61pAzBRh0qwKuDEg8xzV/P4wzvu15tQjMxX
	0TBN5t/KLSfF6CtI6nEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdMZ-0000000G3Ri-3VLy;
	Sun, 02 Aug 2026 21:04:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdMY-0000000G3Rc-0PMH
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 21:04:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1B6AA60A58;
	Sun,  2 Aug 2026 21:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47CC01F000E9;
	Sun,  2 Aug 2026 21:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785704688;
	bh=LQudG167n0KvKaNoDtPMIdupy91Zk5Zg/DIiWK6PMZc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q9vFDThP+1UuHHX7HUAHB4AWwuP17KS20FQ9oXHFnAn/VVOM7R2Gq1H0MYkRoCC9c
	 ua5fF35FXD0C3Tcn4N8zsCMwkua7G4krtXB6n3sL3BksHdPnOmwoHkT7ye/PhpjFuf
	 zqjzylcz5fFVCjUUE4IdxqtoMFagYbhCqL3y7VnpUXq4RiuPmJtrc/1PdT7yrI4S/L
	 eL7UguYYOfvDwoYAhdoxEl+QJVe9IehOAK9o0MhtdHAh2/CaLBSdOm9+SGJa42pXgY
	 luws+UIWIqy5BfdoZ2Yqu7iBzG3ooqP+wVyFzMQqUrzx8grfb4vsui56fmZEFlD8Zl
	 TSQ865DMpfCWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 11/12] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, lee@kernel.org
In-Reply-To: <20260802-zx29clk-v9-11-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-11-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 21:04:47 +0000
Message-Id: <20260802210448.47CC01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzbWF0Y2ggYmV0
d2VlbiB2OSBjaGFuZ2Vsb2cgYW5kIGRyaXZlciBjb2RlIHJlZ2FyZGluZyByZW1vdmVkIHJlc2V0
cy4KLS0KCi0tLSBQYXRjaCBbMTFdOiBbUEFUQ0ggdjkgMTEvMTJdIHJlc2V0OiB6dGU6IEFkZCBh
IHp4Mjk3NTIwdjMgcmVzZXQgZHJpdmVyIC0tLQpjb21taXQgZWVhZDM1MWIzNjdjNDcwYmMyYTQ0
MGYzYjI4YjIyNTgwYTdlYjE3OQpBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNp
bmdlckBnbWFpbC5jb20+CgpyZXNldDogenRlOiBBZGQgYSB6eDI5NzUyMHYzIHJlc2V0IGRyaXZl
cgoKVGhpcyBjb21taXQgYWRkcyBhIG5ldyByZXNldCBkcml2ZXIgZm9yIHRoZSBaVEUgengyOTc1
MjB2MyBTb0NzLiBJdCBtYW5hZ2VzCnRoZSByZXNldHMgZm9yIE1GRCBjaGlsZCBkZXZpY2VzIGNy
ZWF0ZWQgYnkgdGhlIHp0ZS16eDI5NzUyMHYzLWNybSBkcml2ZXIuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3Jlc2V0L3Jlc2V0LXp0ZS16eDI5NzUyMHYzLmMgYi9kcml2ZXJzL3Jlc2V0L3Jlc2V0
LXp0ZS16eDI5NzUyMHYzLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAwMDAuLmJjMjgwMWQ0M2QxMGQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9yZXNl
dC9yZXNldC16dGUtengyOTc1MjB2My5jCgpbIC4uLiBdCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IHp0ZV9yZXNldF9yZWcgengyOTc1MjB2M190b3BfcmVzZXRzW10gPSB7CgpbIC4uLiBdCgo+ICsJ
LyogVVNCIHJlc2V0LiAweDg0IHJldHVybnMgdGhlIFVTQiBkZXZpY2Ugc3RhdHVzICgweDEgZm9y
IEhTSUMgdXAsIDB4MiBmb3IgVVNCIHVwLCBidXQKPiArCSAqIGFsbCAzIGJpdHMgKFBDTEssIFdD
TEssIFBIWSkgbmVlZCB0byBiZSBkZWFzc2VydGVkIGZvciB0aGUgZGV2aWNlIHRvIHJlcG9ydCBy
ZWFkeS4KPiArCSAqIFRodXMgcG9sbGluZyB0aGUgc3RhdHVzIGlzIHRoZSByZXNwb25zaWJpbGl0
eSBvZiB0aGUgVVNCIFBIWSBkcml2ZXIuCj4gKwkgKi8KPiArCVtaWDI5NzUyMFYzX1VTQl9SRVNF
VF0gICAgICAgPSB7IC5yZWcgPSAgMHg4MCwgLm1hc2sgPSBCSVQoNCkgfCBCSVQoNSkgICB9LAo+
ICsJW1pYMjk3NTIwVjNfSFNJQ19SRVNFVF0gICAgICA9IHsgLnJlZyA9ICAweDgwLCAubWFzayA9
IEJJVCgxKSB8IEJJVCgyKSAgIH0sCj4gK307CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIHY5IGNo
YW5nZWxvZyBtZW50aW9ucyAiUmVtb3ZlIEhTSUMgYW5kIFVTQiBQSFkgcmVzZXRzLCB0aGUgcGh5
IGRyaXZlcgp3aWxsIGFjY2VzcyB0aGVtIHRocm91Z2ggdGhlIHNoYXJlZCByZWdtYXAgZGlyZWN0
bHkiLCBidXQgdGhlIFVTQiBhbmQgSFNJQyAKcmVzZXRzIGFyZSBzdGlsbCBkZWZpbmVkIGluIHp4
Mjk3NTIwdjNfdG9wX3Jlc2V0cyBoZXJlLgoKU2hvdWxkIHRoZXNlIGRlZmluaXRpb25zIGJlIHJl
bW92ZWQgdG8gbWF0Y2ggdGhlIGNoYW5nZWxvZyBhbmQgcHJldmVudApwb3RlbnRpYWwgY29uY3Vy
cmVudCBtb2RpZmljYXRpb25zIHRocm91Z2ggdGhlIHJlc2V0IEFQSSB3aGlsZSB0aGUgUEhZIGRy
aXZlcgphY2Nlc3NlcyB0aGVtIHZpYSByZWdtYXA/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODAyLXp4MjljbGstdjktMC1kMDU1
MzBkODVkMjhAZ21haWwuY29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

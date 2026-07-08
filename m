Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE56C43602
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 10:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAWdx3PLeAgLiCCwcWetLGlMhzdmftIlEZLiVAoPjnA=; b=NSfeVWlKlcVkdc
	jqW/Nrt5x+7nNhrl6vHA88jek21lYms5H7Z0mPYfMAx2gNj+4PSOUP03PPlg3q8IPKNa4mQzEpU8L
	P5kbxSLDTH6At/KLMV20+taf9qUevLLe0fm6kPcJQHio8wDA6OJmfDHAGYt+IWvcc55ZcoQj6WqZi
	vgWZZU9tifkMCEPQBAu/FVuVLGbXScA2cApcpujuHMlTXS7UBDoAtk1pbJEX/Vze5GMgUknzLBM2f
	s/vpI5LC17MK2ychzLMgYw/oWAA9u/wj32PwB4uJL99LtYpczpMtwrZz7Z5c+cYXVcGF9aKQqmJnR
	r5yMCamIv+hTfIXEXjOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPpa-0000000GwYl-0Kiu;
	Wed, 08 Jul 2026 10:48:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPpY-0000000GwYY-1Hek
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 10:48:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C2DF601EC;
	Wed,  8 Jul 2026 10:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B884A1F00A3A;
	Wed,  8 Jul 2026 10:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783507719;
	bh=o4So7Cf7kYzIH9Z/gJk/m0AVk6AkVNYXfnVjBlj2KBQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aLFptjvA3gXlczH+v38u/vpMGl/inUzloo+w/yfYWnOa6iDo+IcN7c69lAqi5m6+M
	 j8Hmj7ncHoQlaGufDgyldwroxO9Rrqxh1hfWF/rpHAYhr3tEieqiiQG4rSfWY8YEm6
	 WIgZtg/P1/aRwhcxNKau6kMWGs7u/7krjN3+4fmCCXlVOXL84NB9B4hfZYgK6nebVr
	 oXZ6b2TWxLA9910dJZnpleLKXBeG8A7ToCxRzPxArGP3qSRhq0NJk5Owni21X5OA0v
	 ZZRjs+AHOFo0DQVXHH3GnrZUtt4iRMKsB4szrMCo/1wPXQ38ujmj2XnR1cH26oisOU
	 zkLoyyNI8jDLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260708103606.1462960-3-a0987203069@gmail.com>
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-3-a0987203069@gmail.com>
Date: Wed, 08 Jul 2026 10:48:38 +0000
Message-Id: <20260708104838.B884A1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBEVCBjaGFuZ2Vz
IGFkZCBkdWFsLXBvcnQgVVNCIFBIWSBzdXBwb3J0IGJ1dCB0aGUgdW5kZXJseWluZyBQSFkgZHJp
dmVyIG9ubHkgc3VwcG9ydHMgYSBzaW5nbGUgcG9ydCwgYnJlYWtpbmcgVVNCIHBvcnQgMS4KLS0K
Ci0tLSBQYXRjaCBbMl06IFtQQVRDSCB2MyAyLzNdIGFybTY0OiBkdHM6IG51dm90b246IG1hMzVk
MTogYWRkIFVTQiBjb250cm9sbGVycyBhbmQgZHVhbC1wb3J0IFBIWSBub2RlIC0tLQpjb21taXQg
YWU4NjE2NTY2NWE2OTdjNTE4MWM3MmVkNGUzZjhmNzRiY2YwYmVlZApBdXRob3I6IEpvZXkgTHUg
PGEwOTg3MjAzMDY5QGdtYWlsLmNvbT4KCmFybTY0OiBkdHM6IG51dm90b246IG1hMzVkMTogYWRk
IFVTQiBjb250cm9sbGVycyBhbmQgZHVhbC1wb3J0IFBIWSBub2RlCgpUaGlzIGNvbW1pdCBhZGRz
IFVTQiBjb250cm9sbGVyIChEV0MyLCBFSENJLCBPSENJKSBhbmQgZHVhbC1wb3J0IFBIWSBub2Rl
cwp0byB0aGUgbWEzNWQxIGRldmljZSB0cmVlLiBJdCBhbHNvIGFkZHMgcGluIGNvbnRyb2wgY29u
ZmlndXJhdGlvbnMgZm9yIHRoZQpIU1VTQiBzaWduYWxzIHRvIHRoZSBtYTM1ZDEtaW90LTUxMm0g
YW5kIG1hMzVkMS1zb20tMjU2bSBib2FyZCBmaWxlcy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2
b3Rvbi9tYTM1ZDEuZHRzaQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1
ZDEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaQpb
IC4uLiBdCj4gQEAgLTg4LDYgKzg4LDE0IEBAIHN5czogc3lzdGVtLW1hbmFnZW1lbnRANDA0NjAw
MDAgewo+ICAJCQkjcmVzZXQtY2VsbHMgPSA8MT47Cj4gIAkJfTsKPiAgCj4gKwkJdXNiX3BoeTog
dXNiLXBoeSB7Cj4gKwkJCWNvbXBhdGlibGUgPSAibnV2b3RvbixtYTM1ZDEtdXNiMi1waHkiOwo+
ICsJCQljbG9ja3MgPSA8JmNsayBIVVNCSDBfR0FURT47Cj4gKwkJCW51dm90b24sc3lzID0gPCZz
eXM+Owo+ICsJCQkjcGh5LWNlbGxzID0gPDE+Owo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ICsJCX07Cj4gKwpbIC4uLiBdCj4gKwkJZWhjaTE6IHVzYkA0MDFjMDAwMCB7Cj4gKwkJCWNvbXBh
dGlibGUgPSAiZ2VuZXJpYy1laGNpIjsKPiArCQkJcmVnID0gPDB4MCAweDQwMWMwMDAwIDB4MCAw
eDEwMDA+Owo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzQgSVJRX1RZUEVfTEVWRUxfSElH
SD47Cj4gKwkJCWNsb2NrcyA9IDwmY2xrIEhVU0JIMV9HQVRFPjsKPiArCQkJcGh5cyA9IDwmdXNi
X3BoeSAxPjsKW1NldmVyaXR5OiBIaWdoXQpJcyB0aGUgbWEzNWQxIFVTQiBQSFkgZHJpdmVyIGZ1
bGx5IGNhcGFibGUgb2Ygc3VwcG9ydGluZyBkdWFsIHBvcnRzPwoKTG9va2luZyBhdCBtYTM1X3Vz
Yl9waHlfcHJvYmUoKSBpbiBkcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNiMi5jLApp
dCByZWdpc3RlcnMgdGhlIHByb3ZpZGVyIHdpdGggb2ZfcGh5X3NpbXBsZV94bGF0ZSwgd2hpY2gg
aWdub3JlcyB0aGUgaW5kZXgKaW4gYDwmdXNiX3BoeSAxPmAgYW5kIHVuY29uZGl0aW9uYWxseSBy
ZXR1cm5zIHRoZSBmaXJzdCBQSFkgaW5zdGFuY2UuCgpGdXJ0aGVybW9yZSwgbWEzNV91c2JfcGh5
X3Bvd2VyX29uKCkgaGFyZGNvZGVzIHRoZSBwb3dlci1vbiByb3V0aW5lCnRvIFBIWTA6Cgpkcml2
ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNiMi5jOm1hMzVfdXNiX3BoeV9wb3dlcl9vbigp
IHsKICAgIC4uLgogICAgcmVnbWFwX3VwZGF0ZV9iaXRzKHBfcGh5LT5zeXNyZWcsIE1BMzVfU1lT
X1JFR19VU0JQTUlTQ1IsIDB4NywgKFBIWTBQT1IgfCBQSFkwU1VTUEVORCkpOwogICAgLi4uCn0K
CldpbGwgdGhpcyBjYXVzZSBwb3J0IDEgdG8gZmFpbCB0byBpbml0aWFsaXplIHNpbmNlIHRoZSBk
cml2ZXIgd2lsbAppbmNvcnJlY3RseSBzaGFyZSBQSFkwJ3MgcmVmY291bnQgYW5kIGxlYXZlIFBI
WTEgY29tcGxldGVseSB1bmluaXRpYWxpemVkPwoKPiArCQkJcGh5LW5hbWVzID0gInVzYiI7Cj4g
KwkJCWNvbXBhbmlvbiA9IDwmb2hjaTE+Owo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJ
CX07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNzA4MTAzNjA2LjE0NjI5NjAtMS1hMDk4NzIwMzA2OUBnbWFpbC5jb20/cGFydD0y
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

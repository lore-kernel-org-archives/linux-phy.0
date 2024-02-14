Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A682C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 12:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+Fh8gVPN9rMbhhDN15++XdLDpP/8do2E0BW90jvGYg=; b=dWcxIu3ctWmqH3
	ADxWOMbipYehkB81osrBK8dzzYPRDhz/V5vywU8JOCsNj59je68jXeuo0paH2RY3hq84RfQozEFef
	k0e7NbAJ7945DUy0hw9JkkN6utI1r4L+1WSlMvIQuc5I3fQC2jMDFVyclKKfi6UXPGnAdv6fp5fai
	L6npAhAZvHcgVkg+x2mAOkoC6lB5AKEh3YbCMCs88SAlLQKs6JNm8qwle6p0IpOTKPHNuv2I+VJRE
	wBczDZLwTytmx3SAWYf5QVd08mHPNFARWoqwT7Zx25NFiMaFVq6dJYjZQVonhScWDtabK6Y65njgf
	BX0trE6p2C0nsfsdNWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raEcT-0000000CsWb-2vB0;
	Wed, 14 Feb 2024 12:44:09 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raEcQ-0000000CsVJ-06kz;
	Wed, 14 Feb 2024 12:44:07 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-68c4673eff5so26231256d6.1;
        Wed, 14 Feb 2024 04:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707914644; x=1708519444; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3hOuwmcOy4h7Pq7KcsMS56Zfq3Ol0wBjKdoyWghw3M=;
        b=imavgwmVvdAG5uAbwpY1zcpuO9JSxpiXu7z0oTkR8FNiVGXfqfVVsprU/MngmbEqGZ
         S63d7CyDfFGSIEaoYnXeq+2u+VAPs/KiE+XMhvGWHKGIb3VQMkwwtQUuCMmPVoClxIx5
         u/KTb9XLjbOLGV7FCLVVpjuAFRWtLGRg/xqNoZ7lzrGLWZKqt5hqEDkj+mnOx7eswOgu
         gRCqLr//VSWXFJdoHpyXeDaPQQiVsjGAbT7O5R2oOchMXtzGRsTFbiL2C1pfvlXqkNcy
         lnGeB+ot1ZmkT2K92+3jPXY/xRdzVXxRofgCyo/njGQX8+YkZMZCNuQmRJpsOEPo6Ai3
         BzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707914644; x=1708519444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C3hOuwmcOy4h7Pq7KcsMS56Zfq3Ol0wBjKdoyWghw3M=;
        b=MZPDM1Q4PLJUiMORXcPEnU/bRd7tiKWjfHsou5O5t7Xh3/k96fRT6Q4IsIvvszojvh
         nsUlgKOAxpH8Kqa596MZjYton7lkgyPmkUt0Bs8t1bm6Y3budI98UM0aJAs7aX7LNxl+
         HjmJybPAJGvOHowcavxYl94jk4D9tONFWidDXEuHn4X1VvpH17Bn/TCJUAjKAB6Rnvlu
         ILca1cPGYyIN48ln8C3soU2MHZexWd9fNvKasWpfdc8LYnMcpb59IypWv+s+IWCtj4zr
         jANwy392tGWA0WLmElCI2j9dff9QORLyhRMmHKceYwkuK4SgxPlYgWlK4OCYtZhCZdHs
         JGog==
X-Forwarded-Encrypted: i=1; AJvYcCWBWh7EkJ6a8vjJeqtphOuTW8N15vk7fpJ04r1e0qT6621CCqz9j4T3JMG8WHn0wtnqwEAUA6fQ5fbOarxEtKZD2LrQivK719A6HouUww==
X-Gm-Message-State: AOJu0Yxq8svpweU1BITH2wazsCZkPkxhQ68BJKi9IgsT7nTSfj5uV+EN
	M+hKs+b5tFX0yinlqaD22YH2aWo9WXzCISK4ijK4cFvzPlHGp4F4L+PI8c/QDfYZOSrANUa7scL
	3tgv5tkKVtnRYL8qn71Przy3F8dKlB/o7IVlc5A==
X-Google-Smtp-Source: AGHT+IHXfLlKMUyG97H7k3BU81qTA+mF1/UVvd07cvvpzVXkxAA5MYm3B8l7cF2tSJYKaD4S4ZsvDWr0Pnfh+93lU/4=
X-Received: by 2002:a17:90b:1043:b0:298:c5f6:edf8 with SMTP id
 gq3-20020a17090b104300b00298c5f6edf8mr2565325pjb.0.1707914207196; Wed, 14 Feb
 2024 04:36:47 -0800 (PST)
MIME-Version: 1.0
References: <20240210204606.11944-1-aford173@gmail.com> <20240210204606.11944-5-aford173@gmail.com>
 <20240214121517.54552a4a@booty>
In-Reply-To: <20240214121517.54552a4a@booty>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 14 Feb 2024 06:36:36 -0600
Message-ID: <CAHCN7xLnXMZJkTjWBP5HW0h2-bUOyeNEL2oO0rnV5tNaz9Hv7A@mail.gmail.com>
Subject: Re: [PATCH V4 4/6] arm64: dts: imx8mp: add HDMI irqsteer
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_044406_093510_85361D77 
X-CRM114-Status: GOOD (  18.48  )
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

T24gV2VkLCBGZWIgMTQsIDIwMjQgYXQgNToxNeKAr0FNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gT24gU2F0LCAxMCBGZWIgMjAyNCAxNDo0Njow
MCAtMDYwMAo+IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cm90ZToKPgo+ID4gRnJv
bTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPgo+ID4gVGhlIEhETUkg
aXJxc3RlZXIgaXMgYSBzZWNvbmRhcnkgaW50ZXJydXB0IGNvbnRyb2xsZXIgd2l0aGluIHRoZSBI
RE1JCj4gPiBzdWJzeXN0ZW0gdGhhdCBtYXBzIGFsbCBIRE1JIHBlcmlwaGVyYWwgSVJRcyBpbnRv
IGEgc2luZ2xlIHVwc3RyZWFtCj4gPiBJUlEgbGluZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFk
YW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBWMjogIEFkZCBteSAoQWRh
bSkgcy1vLWIgYW5kIHJlLW9yZGVyIHBvc2l0aW9uIHVuZGVyIEFJUFM0Cj4gPiAtLS0KPiA+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSB8IDEzICsrKysrKysrKysr
KysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gPiBpbmRleCAwNzMwZDRjZjliYzQu
LjliOGFiMzY3ZDc3NCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcC5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXAuZHRzaQo+ID4gQEAgLTE5MjcsNiArMTkyNywxOSBAQCBoZG1pX2Jsa19jdHJsOiBibGst
Y3RybEAzMmZjMDAwMCB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAiaGRjcCIsICJocnYiOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlycXN0ZWVyX2hkbWk6IGludGVy
cnVwdC1jb250cm9sbGVyQDMyZmMyMDAwIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteC1pcnFzdGVlciI7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWcgPSA8MHgzMmZjMjAwMCAweDQ0PjsKPgo+IFRoZSBsYXN0IHJlZ2lz
dGVyIGJlaW5nIGF0IG9mZnNldCAweDQ0LCB0aGlzIHNob3VsZCBiZSA8MHgzMmZjMjAwMAo+IDB4
NDg+IG9yIGV2ZW4gPC4uLiAweDEwMDA+IGFzIHRoZSBUUk0gbWVudGlvbnMgYSA0IGtCIHNpemUu
CgpJJ2xsIGRvIDB4MTAwMCBpbiB0aGUgbmV4dCByZXZpc2lvbiB0byBtYXRjaCB0aGUgZG9jdW1l
bnRhdGlvbiBzaW5jZQp0aGVyZSBkb2Vzbid0IGFwcGVhciB0byBiZSBhbnkgb3ZlcmxhcC4KCmFk
YW0KPgo+IFtUZXN0ZWQgdXNpbmcgQXZuZXQgTVNDIFNNMlMtSU1YOFBMVVMgU29NIG9uIEF2bmV0
IE1TQyBTTTItTUItRVAxXQo+IFRlc3RlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29s
aUBib290bGluLmNvbT4KPgo+Cj4gTHVjYQo+Cj4gLS0KPiBMdWNhIENlcmVzb2xpLCBCb290bGlu
Cj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxp
bi5jb20KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

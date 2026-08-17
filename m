Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0680C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2K4hi2aDk1iXdpWlXMvm5KEW1dntwkg5nLPxvVAEr4=; b=tCbnjfMAX9Ys/v
	T8mP/1N8D4ug3cBoYMsuZxIXInbJsBdm2Pr3MMqf+CLcpgJiwzPK+DKJTrpJlKQp7fAHW+y3Dx8gr
	1o4M5UPVtEwObIJKIMCRzLCxNUfifnV0O6yF6L9Y7qnsAvyXwV+zqHMewZkBBUzb3S/IW+RfQBL2E
	zj2jlJBgX0zfQZvFeGuXQbsYaIlN+h7gb0RRdNwMyKE+hdlynhfGKpZd7cWOR3g3+PJJUT3V5EUBn
	uunL3ICpPl36zEPXJwE+fVoVZuKLfyRfxgEfClIryMuOLFC8TVrNdeCN8J1ChAxtlC1MC+7YBh2o8
	fJtYv9OtNDS3mzlnp8AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Az-00000006sHN-246V;
	Mon, 17 Aug 2026 21:47:25 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Aw-00000006sGj-1Uln
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:47:23 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2d03fcd26a6so6253355ad.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003241; x=1787608041; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zOOkvXfOzPtXa3REAJ+vIHNnVAQOzE4LMS85Pw6e9+0=;
        b=QMnt/Ci3pPCVS2OTSrVXH5JvaIZrXVdCJ38IceSugUqTcXMdfM5/tpAsdLrUqvzAJG
         xXiEsV3V2HTgdUSsQCC2l7qDvaaGUzFF27028X+jn0nOVr+JiP/N+yOZqRbGLG/EO+7Q
         +ZSVkMg+gEHRRb9MstpBaPyti5CRHIOiyyrtjSOf3h7xMt2XkRmSSxx9uvARyD973q1d
         QH2asHkcjCOC2YntQJa+vUwrvqunjTRMocGu2I5Px3mUy7Ezqer80NTPRNSXJl9Znnso
         JdNo12k2GXNOnThDezGWIX0lCIrQaSJ/a+DMQz09qx+C+cPxor82JOm+ZagC1hmXXZts
         WD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003241; x=1787608041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zOOkvXfOzPtXa3REAJ+vIHNnVAQOzE4LMS85Pw6e9+0=;
        b=S5IkZe0iMFbR1NsyiARLh4fTHHK4jKKIipAVksbLswAKo5GlDTBYYbUlcBkIIOyHJ0
         QWUqtd8E7p8uI03bwqSUobLNCsvY7v0T9dIGb6xLphEvt2PIcf4MiH8DGpxd5sdtj3S0
         J/CD8iRGw4xnRiGuQhOXzhoRZn/aqte0Ga7WRHeDKRE4l0w0lkTwxJ27x46PC/yktV4I
         OSLk6pNmPPF8rkv1kHSYWkPK9ZW+oexW8bCO/UPTOTisb5II3mVZnUjpfQC7ii86iWI2
         Cxsp+vWCD2Z13VFWqdfTWUj36gZMbfZfcnpL5ZYbozyogFyvkzZjtkewPVrzrwUJBeCg
         7SPg==
X-Forwarded-Encrypted: i=1; AHgh+RqREN3OKI9vXECuU0rfaDOQ//wQ0vPOzj1rDfpZPrXZfxMqrV84V++Xylzp0znd2rEkeZmzcfybz8M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXUZF6IYxs1FZvtm3DzleUqN6N5DG4Lb/hXcPFyVpDF9MVdyET
	hFkjNY7/IULhp4qGd2FiHxtTSXVVvH8VlOUp+3EiyuDTAvboitkKZ2Of
X-Gm-Gg: AR+sD12cjboBVRWvzSLErKMRYbPU8Pv+r92dcdogMe4nTCMisvQwv1rcYeBGEQvp6+R
	397ZLb3FsDv7+XlpVs4N3DkNpdIOeM5U3RmY/aKPK+YGAjBNgu8NsO658cUw5RwfiH9CUZLm32E
	VUML115DjkMFZNsWHM7UXz2vWw2QMpRj7WuOkQMxKCbrKmBlqjjXXBhLNHFHNCDNMQaHG3MT08J
	GN7exnjFvNnqMYl/YH1dtjelQresfbpHNLX5f2WI2KJrvCag3R4Nyy4C0/aIwV4WcOILHyBZ/k1
	t1j8jg9FiBQ8ekS2jNnD6W3KJG9sdHDL8jwisII/M4apLZjuvxrD1oT9POCa7mX4EdQjGV1o+Jo
	6MgalKRL4ELl240cbo9ix1xBaRMb0Aik1U6ZI4HuH8iVWBUzv0PR9s24ZRcrDSMaDzrV3zfAtpM
	1qh7oU5ieshLXie4KPOF67db/VsJg+NsoxloWvmKQxczXCGDlyh9Z3g0eBicGQJM9C3iOqxfSA2
	w==
X-Received: by 2002:a17:902:f785:b0:2c9:8287:fd0d with SMTP id d9443c01a7336-2d3b0c9fa62mr234832805ad.3.1787003241426;
        Mon, 17 Aug 2026 14:47:21 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:47:20 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:31 +0530
Subject: [PATCH 1/7] dt-bindings: dma: ti,cppi41: Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-1-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=5423;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=F21VF5WZIFeBDrvSp00yu7wITz+jK3eO7gUtavE26gU=;
 b=HvBPE2YFgPKs1xpfA4//8wMC2+0JImWTrf+vPM4dpDHJnioYai6vZ+YntmxTM5KSe7QMI5+Cy
 KB4isr3/y85CaLXnWXDnMqbKCE4jJcMoQeu46l6lnifgbNCKHhV7fuY
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144722_410865_DF0CE22F 
X-CRM114-Status: GOOD (  16.76  )
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

Q29udmVydCBUSSBDUFBJIDQuMSBETUEgY29udHJvbGxlciB0ZXh0IGJpbmRpbmdzIHRvIERUIHNj
aGVtYS4gQWRkCnRpLGFtMzM1OS1jcHBpNDEgYW5kIHRpLGRhODMwLWNwcGk0MSBpbnRvIHNpbmds
ZSBzY2hlbWEgc2luY2UgdGhleSBzaGFyZQp0aGUgc2FtZSBoYXJkd2FyZSBJUCBibG9jayBhbmQg
ZHJpdmVyLiBBZGQgdW5kb2N1bWVudGVkICNkbWEtcmVxdWVzdHMKYW5kIHBvd2VyLWRvbWFpbnMg
cHJvcGVydGllcyB0byBtYXRjaCBleGlzdGluZyBEVFMgdXNhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBC
aGFyZ2F2IEpvc2hpIDxqLmJoYXJnYXYudUBnbWFpbC5jb20+Ci0tLQogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1sICAgICAgfCAxMDggKysrKysrKysrKysrKysr
KysrKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvYW0zM3h4LXVzYi50eHQgICAgICAg
ICB8ICAxNCAtLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kYTh4eC11c2IudHh0ICAg
ICAgICAgIHwgIDEyIC0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxMDggaW5zZXJ0aW9ucygrKSwgMjYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2RtYS90aS90aSxjcHBpNDEueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEvdGkvdGksY3BwaTQxLnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi4xMTBjZjYyYzY2ZDIKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1sCkBAIC0wLDAgKzEsMTA4
IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNs
YXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L2RtYS90aS90aSxjcHBpNDEueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogVEkgQ1BQSTQxIERNQSBDb250cm9sbGVy
CisKK21haW50YWluZXJzOgorICAtIFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lA
bGludXRyb25peC5kZT4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgor
ICAgICAgLSB0aSxhbTMzNTktY3BwaTQxCisgICAgICAtIHRpLGRhODMwLWNwcGk0MQorCisgIHJl
ZzoKKyAgICBtaW5JdGVtczogMworICAgIG1heEl0ZW1zOiA0CisKKyAgcmVnLW5hbWVzOgorICAg
IG1pbkl0ZW1zOiAzCisgICAgbWF4SXRlbXM6IDQKKworICBpbnRlcnJ1cHRzOgorICAgIG1heEl0
ZW1zOiAxCisKKyAgaW50ZXJydXB0LW5hbWVzOgorICAgIGNvbnN0OiBnbHVlCisKKyAgIiNkbWEt
Y2VsbHMiOgorICAgIGNvbnN0OiAyCisKKyAgZG1hLWNoYW5uZWxzOgorICAgIGRlc2NyaXB0aW9u
OiBOdW1iZXIgb2YgRE1BIGNoYW5uZWxzIHN1cHBvcnRlZC4KKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKKworICBkbWEtcmVxdWVzdHM6CisgICAgZGVz
Y3JpcHRpb246IE51bWJlciBvZiBETUEgcmVxdWVzdHMgc3VwcG9ydGVkLgorICAgICRyZWY6IC9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgorCisgIHBvd2VyLWRvbWFpbnM6
CisgICAgbWF4SXRlbXM6IDEKKworICAiI2RtYS1jaGFubmVscyI6CisgICAgZGVzY3JpcHRpb246
IERlcHJlY2F0ZWQsIHVzZSBkbWEtY2hhbm5lbHMgaW5zdGVhZC4KKyAgICBkZXByZWNhdGVkOiB0
cnVlCisKKyAgIiNkbWEtcmVxdWVzdHMiOgorICAgIGRlc2NyaXB0aW9uOiBEZXByZWNhdGVkLCB1
c2UgZG1hLXJlcXVlc3RzIGluc3RlYWQuCisgICAgZGVwcmVjYXRlZDogdHJ1ZQorCityZXF1aXJl
ZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gcmVnLW5hbWVzCisgIC0gIiNkbWEtY2Vs
bHMiCisgIC0gZG1hLWNoYW5uZWxzCisKK2FsbE9mOgorICAtICRyZWY6IC9zY2hlbWFzL2RtYS9k
bWEtY29udHJvbGxlci55YW1sIworICAtIGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAg
Y29tcGF0aWJsZToKKyAgICAgICAgICBjb250YWluczoKKyAgICAgICAgICAgIGNvbnN0OiB0aSxh
bTMzNTktY3BwaTQxCisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIHJlZzoK
KyAgICAgICAgICBtaW5JdGVtczogNAorICAgICAgICByZWctbmFtZXM6CisgICAgICAgICAgaXRl
bXM6CisgICAgICAgICAgICAtIGNvbnN0OiBnbHVlCisgICAgICAgICAgICAtIGNvbnN0OiBjb250
cm9sbGVyCisgICAgICAgICAgICAtIGNvbnN0OiBzY2hlZHVsZXIKKyAgICAgICAgICAgIC0gY29u
c3Q6IHF1ZXVlbWdyCisgICAgICAgIHBvd2VyLWRvbWFpbnM6IGZhbHNlCisgICAgICByZXF1aXJl
ZDoKKyAgICAgICAgLSBpbnRlcnJ1cHQtbmFtZXMKKyAgICAgICAgLSBkbWEtcmVxdWVzdHMKKyAg
ICBlbHNlOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgcmVnOgorICAgICAgICAgIG1heEl0
ZW1zOiAzCisgICAgICAgIHJlZy1uYW1lczoKKyAgICAgICAgICBpdGVtczoKKyAgICAgICAgICAg
IC0gY29uc3Q6IGNvbnRyb2xsZXIKKyAgICAgICAgICAgIC0gY29uc3Q6IHNjaGVkdWxlcgorICAg
ICAgICAgICAgLSBjb25zdDogcXVldWVtZ3IKKwordW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxz
ZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgZG1hLWNvbnRyb2xsZXJANzQwMjAwMCB7CisgICAg
ICAgIGNvbXBhdGlibGUgPSAidGksYW0zMzU5LWNwcGk0MSI7CisgICAgICAgIHJlZyA9IDwweDQ3
NDAwMDAwIDB4MTAwMD4sCisgICAgICAgICAgICAgIDwweDQ3NDAyMDAwIDB4MTAwMD4sCisgICAg
ICAgICAgICAgIDwweDQ3NDAzMDAwIDB4MTAwMD4sCisgICAgICAgICAgICAgIDwweDQ3NDA0MDAw
IDB4NDAwMD47CisgICAgICAgIHJlZy1uYW1lcyA9ICJnbHVlIiwgImNvbnRyb2xsZXIiLCAic2No
ZWR1bGVyIiwgInF1ZXVlbWdyIjsKKyAgICAgICAgaW50ZXJydXB0cyA9IDwxNz47CisgICAgICAg
IGludGVycnVwdC1uYW1lcyA9ICJnbHVlIjsKKyAgICAgICAgI2RtYS1jZWxscyA9IDwyPjsKKyAg
ICAgICAgZG1hLWNoYW5uZWxzID0gPDMwPjsKKyAgICAgICAgZG1hLXJlcXVlc3RzID0gPDI1Nj47
CisgICAgfTsKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvYW0zM3h4LXVzYi50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L2FtMzN4eC11c2IudHh0CmluZGV4IDY1NGZmYzYyZDAxMy4uODQzMWRlMzQ2MTI5IDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0
CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvYW0zM3h4LXVzYi50
eHQKQEAgLTUxLDIwICs1MSw2IEBAIFVTQgogVGhlIGNvbnRyb2xsZXIgc2hvdWxkIGhhdmUgYW4g
InVzYiIgYWxpYXMgbnVtYmVyZWQgcHJvcGVybHkgaW4gdGhlIGFsaWFzCiBub2RlLgogCi1ETUEK
LX5+fgotLSBjb21wYXRpYmxlOiB0aSxhbTMzNTktY3BwaTQxCi0tIHJlZzogb2Zmc2V0IGFuZCBs
ZW5ndGggb2YgdGhlIGZvbGxvd2luZyByZWdpc3RlciBzcGFjZXM6IFVTQlNTLCBVU0IKLSAgQ1BQ
SSBETUEgQ29udHJvbGxlciwgVVNCIENQUEkgRE1BIFNjaGVkdWxlciwgVVNCIFF1ZXVlIE1hbmFn
ZXIKLS0gcmVnLW5hbWVzOiBnbHVlLCBjb250cm9sbGVyLCBzY2hlZHVsZXIsIHF1ZXVlbWdyCi0t
ICNkbWEtY2VsbHM6IHNob3VsZCBiZSBzZXQgdG8gMi4gVGhlIGZpcnN0IG51bWJlciByZXByZXNl
bnRzIHRoZQotICBlbmRwb2ludCBudW1iZXIgKDAg4oCmIDE0IGZvciBlbmRwb2ludHMgMSDigKYg
MTUgb24gaW5zdGFuY2UgMCBhbmQgMTUg4oCmIDI5Ci0gIGZvciBlbmRwb2ludHMgMSDigKYgMTUg
b24gaW5zdGFuY2UgMSkuIFRoZSBzZWNvbmQgbnVtYmVyIGlzIDAgZm9yIFJYIGFuZAotICAxIGZv
ciBUWCB0cmFuc2ZlcnMuCi0tIGRtYS1jaGFubmVsczogc2hvdWxkIGJlIHNldCB0byAzMCByZXBy
ZXNlbnRpbmcgdGhlIDE1IGVuZHBvaW50cyBmb3IKLSAgZWFjaCBVU0IgaW5zdGFuY2UuCi0tICNk
bWEtY2hhbm5lbHM6IGRlcHJlY2F0ZWQKLQogRXhhbXBsZToKIH5+fn5+fn5+CiBUaGUgZm9sbG93
aW5nIGV4YW1wbGUgY29udGFpbnMgYWxsIHRoZSBub2RlcyBhcyB1c2VkIG9uIGFtMzM1eC1ldm06
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2RhOHh4
LXVzYi50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2RhOHh4LXVz
Yi50eHQKaW5kZXggZmIyMDI3YTdkODBkLi4wMDMyMGQ5MmQzYmIgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZGE4eHgtdXNiLnR4dAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2RhOHh4LXVzYi50eHQKQEAgLTI3LDE4
ICsyNyw2IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiB+fn5+fn5+fn5+fn5+fn5+fn5+fgogIC0g
dmJ1cy1zdXBwbHk6IFBoYW5kbGUgdG8gYSByZWd1bGF0b3IgcHJvdmlkaW5nIHRoZSBVU0IgYnVz
IHBvd2VyLgogCi1ETUEKLX5+fgotLSBjb21wYXRpYmxlOiB0aSxkYTgzMC1jcHBpNDEKLS0gcmVn
OiBvZmZzZXQgYW5kIGxlbmd0aCBvZiB0aGUgZm9sbG93aW5nIHJlZ2lzdGVyIHNwYWNlczogQ1BQ
SSBETUEgQ29udHJvbGxlciwKLSAgQ1BQSSBETUEgU2NoZWR1bGVyLCBRdWV1ZSBNYW5hZ2VyCi0t
IHJlZy1uYW1lczogImNvbnRyb2xsZXIiLCAic2NoZWR1bGVyIiwgInF1ZXVlbWdyIgotLSAjZG1h
LWNlbGxzOiBzaG91bGQgYmUgc2V0IHRvIDIuIFRoZSBmaXJzdCBudW1iZXIgcmVwcmVzZW50cyB0
aGUKLSAgY2hhbm5lbCBudW1iZXIgKDAg4oCmIDMgZm9yIGVuZHBvaW50cyAxIOKApiA0KS4KLSAg
VGhlIHNlY29uZCBudW1iZXIgaXMgMCBmb3IgUlggYW5kIDEgZm9yIFRYIHRyYW5zZmVycy4KLS0g
ZG1hLWNoYW5uZWxzOiBzaG91bGQgYmUgc2V0IHRvIDQgcmVwcmVzZW50aW5nIHRoZSA0IGVuZHBv
aW50cy4KLS0gI2RtYS1jaGFubmVsczogZGVwcmVjYXRlZAotCiBFeGFtcGxlOgogCXVzYl9waHk6
IHVzYi1waHkgewogCQljb21wYXRpYmxlID0gInRpLGRhODMwLXVzYi1waHkiOwoKLS0gCjIuNTUu
MAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=

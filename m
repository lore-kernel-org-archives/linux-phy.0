Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00CF2C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHKj+cudlsf/OmsiqEh+A1FdAmL+IHyi+oL5kEzZ4u4=; b=c7RiS/0MHWk0tX
	ydhmr4M9XqzHM1wVgwQva9WKXVx9VjiKor0tbNVc+hC+PHGzngXZl0EzzoSjuI1joYKjH/Gg1J5Kc
	TtCtx/znEo1TMA58owKL005gKSGfhuSCWLzhr1sbNGgcMK56hQHk5/SrFyGUzW1cmje4t8Q7nl3sP
	h1Nu7k0b2HFABfhMAEE4b5MgXufLRv3ISp54Guma+euy+91oGs+w3gDvZXn3PE80i3LmFcths1oWb
	YS6Y5jt5CHS2tLtxeAACPUMP2EkOMwlilhV5X0u16BRcCZMJiR302YOztaBRQftfPRJgsVVv7E066
	GFADnJqgYqKH1e4mHHQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKos-00000008AkZ-1gbj;
	Tue, 18 Aug 2026 14:29:38 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKoq-00000008Ajv-06z6
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:29:37 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2d03fcd26a6so7462955ad.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063375; x=1787668175; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mwa35nuSoG/2eGYsft3L6cCp2RsoUxnaTuzWFFhRxOA=;
        b=XcYWrZHQyEQbsdnbWB72zbnfE6FTV1HEvNreJfsioN6rU5+LQ1cdVq2eOBHINCD8V8
         310mYxdfaOYiju6VtqBk0g7dQNaU7mw1/wnYlEkbA+uOW5IFlszVZySbiR8dsbKbCkBS
         6macgwapN/yum89L0KaSfdtdGd9U4c7z3DK2mQCGVDA4G4JCMWCIIgyhcZ2gL+cqhRWz
         w9JPB+E+ay5ZbVjKAW6UuZYgFL6yvtXJGV91opr6rD5wYAv6jwC1QRyCJXaeLGFVg1HV
         GvfJOPKtDGu/0UURX2veL3lnE73xgnP20sFSLG9w6fB6nKI9b9/49WRuAMPC9LNhyxAk
         ARCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063375; x=1787668175;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mwa35nuSoG/2eGYsft3L6cCp2RsoUxnaTuzWFFhRxOA=;
        b=E3tOmzuR6lGW9ts0hIiL7SEjy6xrFSHSW0MCfiqyeKgKlF/5Q1rNymxxhUw6/Ys6fX
         /QgijPKxDfnm5O0kaMIgdhVFD9AvSu7NAwpzWmN5CGhZl3Dz3KyNDn2Jw0Q03/ALj/6T
         Ye+jqLQpbk92XWMLEL9YMlK2CG8m9EDAxrwozbKFW531dLgCE2jFH0yYeBuEXcLOkdhJ
         yujipQR82PrsLSq3RBF/XrP6Kvvsn7qyHPTpIpzbNbQv2DCofol5CQGyGOPlCeG/iCGQ
         KcV+cFdZPMl6pLdqeO8K+HRUKZH2XK+7pgTIn4udjUSPG/YmwZlNzdChRQd3/NaAbwNo
         VXZg==
X-Forwarded-Encrypted: i=1; AHgh+RrjusFq32Ab8cEPYGwSuJ/Z+65qTQEI712QFPexUiOstS+p5jPZjKmj88S/YHDadHGVHZUcTH1tnA8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxTNmIEHutcBzlAezCjkessNQDgd4+d+JuvGK5jPqQR9NGjU90
	CbujCCz85rgqkKi8V6gBiE/K16sRYmk4l8NDPK/0tr3wlzWKcKjyWsTs
X-Gm-Gg: AR+sD1309dlBZzUnCW4RoOfZnBj6/Now08D/SfeEEpdvXA8HGHlJqRETalzI5mWc7rS
	qGChhajbYyVOULDM+v56oUgUMFG+8IIw/BJrsi+ekSjGayE1gFDG9FqDTr0egXn4TSEL7X6BPol
	9IHN6T2okqt/Yao3oBWGGsYv676gdYVRAqwU5D3gsbQ4eevYMrn3nV42cuRfe4W0SFBmE+F+QLS
	i8op1AgmdiILToSeqpL/2xLFEuHZhYz34veUssb8mz7GRHgAkU/6HrKaos1wUXQ6dQMI435wW9z
	1k7jEMwCUrhN3Hwv02j3uE5kHo/wDQlHMi9oEKy9OHKoje/FOz25mrhmucTBeGpUbk9od8q8bVP
	DrBaqk4yEoX46LPaufSD5OWnihfy6Twz4/C+UCmdPKTEQr3NB0DvM2zu8ODXBpAx22ndk/kquDn
	dNXLrgeW1vSNDiS3/cTkTHlcnIvKvN8/1Gc3BA8dI2IwCxzV6vPLccaOkH60y8GCsmxd+lcA9W
X-Received: by 2002:a17:903:4585:b0:2cf:9e90:8be with SMTP id d9443c01a7336-2d3b0cd96a6mr307749475ad.4.1787063374733;
        Tue, 18 Aug 2026 07:29:34 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:29:34 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:43 +0530
Subject: [PATCH v2 1/7] dt-bindings: dma: ti,cppi41: Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-1-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=5446;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=GN8OC0qmWePc65/nVwGP+m4XJ9TN93CBwZAGUXRbCQA=;
 b=/ICcEratZ3o2rpqEdLfMo+aQDlLKJjcSt5vgcEdD+6hRQzXd+n584IbHXRbjb3nvO6Zd16Afc
 gyQClNz1JY3AIE+fwrKHNSLQmXV0KSnbXKrPyKXfsHd7uaHpIO+dQOx
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_072936_077598_799E3456 
X-CRM114-Status: GOOD (  17.11  )
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
YmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1sICAgICAgfCAxMDkgKysrKysrKysrKysrKysr
KysrKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvYW0zM3h4LXVzYi50eHQgICAgICAg
ICB8ICAxNCAtLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kYTh4eC11c2IudHh0ICAg
ICAgICAgIHwgIDEyIC0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxMDkgaW5zZXJ0aW9ucygrKSwgMjYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2RtYS90aS90aSxjcHBpNDEueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEvdGkvdGksY3BwaTQxLnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi5hOGMyOGU4YWRhMDcKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1sCkBAIC0wLDAgKzEsMTA5
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
ZDoKKyAgICAgICAgLSBpbnRlcnJ1cHQtbmFtZXMKKyAgICAgICAgLSBpbnRlcnJ1cHRzCisgICAg
ICAgIC0gZG1hLXJlcXVlc3RzCisgICAgZWxzZToKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAg
IHJlZzoKKyAgICAgICAgICBtYXhJdGVtczogMworICAgICAgICByZWctbmFtZXM6CisgICAgICAg
ICAgaXRlbXM6CisgICAgICAgICAgICAtIGNvbnN0OiBjb250cm9sbGVyCisgICAgICAgICAgICAt
IGNvbnN0OiBzY2hlZHVsZXIKKyAgICAgICAgICAgIC0gY29uc3Q6IHF1ZXVlbWdyCisKK3VuZXZh
bHVhdGVkUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAorICAgIGRtYS1jb250
cm9sbGVyQDc0MDIwMDAgeworICAgICAgICBjb21wYXRpYmxlID0gInRpLGFtMzM1OS1jcHBpNDEi
OworICAgICAgICByZWcgPSA8MHg0NzQwMDAwMCAweDEwMDA+LAorICAgICAgICAgICAgICA8MHg0
NzQwMjAwMCAweDEwMDA+LAorICAgICAgICAgICAgICA8MHg0NzQwMzAwMCAweDEwMDA+LAorICAg
ICAgICAgICAgICA8MHg0NzQwNDAwMCAweDQwMDA+OworICAgICAgICByZWctbmFtZXMgPSAiZ2x1
ZSIsICJjb250cm9sbGVyIiwgInNjaGVkdWxlciIsICJxdWV1ZW1nciI7CisgICAgICAgIGludGVy
cnVwdHMgPSA8MTc+OworICAgICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAiZ2x1ZSI7CisgICAgICAg
ICNkbWEtY2VsbHMgPSA8Mj47CisgICAgICAgIGRtYS1jaGFubmVscyA9IDwzMD47CisgICAgICAg
IGRtYS1yZXF1ZXN0cyA9IDwyNTY+OworICAgIH07CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9hbTMzeHgtdXNiLnR4dAppbmRleCA2NTRmZmM2MmQwMTMu
Ljg0MzFkZTM0NjEyOSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3VzYi9hbTMzeHgtdXNiLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0CkBAIC01MSwyMCArNTEsNiBAQCBVU0IKIFRoZSBjb250
cm9sbGVyIHNob3VsZCBoYXZlIGFuICJ1c2IiIGFsaWFzIG51bWJlcmVkIHByb3Blcmx5IGluIHRo
ZSBhbGlhcwogbm9kZS4KIAotRE1BCi1+fn4KLS0gY29tcGF0aWJsZTogdGksYW0zMzU5LWNwcGk0
MQotLSByZWc6IG9mZnNldCBhbmQgbGVuZ3RoIG9mIHRoZSBmb2xsb3dpbmcgcmVnaXN0ZXIgc3Bh
Y2VzOiBVU0JTUywgVVNCCi0gIENQUEkgRE1BIENvbnRyb2xsZXIsIFVTQiBDUFBJIERNQSBTY2hl
ZHVsZXIsIFVTQiBRdWV1ZSBNYW5hZ2VyCi0tIHJlZy1uYW1lczogZ2x1ZSwgY29udHJvbGxlciwg
c2NoZWR1bGVyLCBxdWV1ZW1ncgotLSAjZG1hLWNlbGxzOiBzaG91bGQgYmUgc2V0IHRvIDIuIFRo
ZSBmaXJzdCBudW1iZXIgcmVwcmVzZW50cyB0aGUKLSAgZW5kcG9pbnQgbnVtYmVyICgwIOKApiAx
NCBmb3IgZW5kcG9pbnRzIDEg4oCmIDE1IG9uIGluc3RhbmNlIDAgYW5kIDE1IOKApiAyOQotICBm
b3IgZW5kcG9pbnRzIDEg4oCmIDE1IG9uIGluc3RhbmNlIDEpLiBUaGUgc2Vjb25kIG51bWJlciBp
cyAwIGZvciBSWCBhbmQKLSAgMSBmb3IgVFggdHJhbnNmZXJzLgotLSBkbWEtY2hhbm5lbHM6IHNo
b3VsZCBiZSBzZXQgdG8gMzAgcmVwcmVzZW50aW5nIHRoZSAxNSBlbmRwb2ludHMgZm9yCi0gIGVh
Y2ggVVNCIGluc3RhbmNlLgotLSAjZG1hLWNoYW5uZWxzOiBkZXByZWNhdGVkCi0KIEV4YW1wbGU6
CiB+fn5+fn5+fgogVGhlIGZvbGxvd2luZyBleGFtcGxlIGNvbnRhaW5zIGFsbCB0aGUgbm9kZXMg
YXMgdXNlZCBvbiBhbTMzNXgtZXZtOgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3VzYi9kYTh4eC11c2IudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3VzYi9kYTh4eC11c2IudHh0CmluZGV4IGZiMjAyN2E3ZDgwZC4uMDAzMjBkOTJk
M2JiIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2Rh
OHh4LXVzYi50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9k
YTh4eC11c2IudHh0CkBAIC0yNywxOCArMjcsNiBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgogfn5+
fn5+fn5+fn5+fn5+fn5+fn4KICAtIHZidXMtc3VwcGx5OiBQaGFuZGxlIHRvIGEgcmVndWxhdG9y
IHByb3ZpZGluZyB0aGUgVVNCIGJ1cyBwb3dlci4KIAotRE1BCi1+fn4KLS0gY29tcGF0aWJsZTog
dGksZGE4MzAtY3BwaTQxCi0tIHJlZzogb2Zmc2V0IGFuZCBsZW5ndGggb2YgdGhlIGZvbGxvd2lu
ZyByZWdpc3RlciBzcGFjZXM6IENQUEkgRE1BIENvbnRyb2xsZXIsCi0gIENQUEkgRE1BIFNjaGVk
dWxlciwgUXVldWUgTWFuYWdlcgotLSByZWctbmFtZXM6ICJjb250cm9sbGVyIiwgInNjaGVkdWxl
ciIsICJxdWV1ZW1nciIKLS0gI2RtYS1jZWxsczogc2hvdWxkIGJlIHNldCB0byAyLiBUaGUgZmly
c3QgbnVtYmVyIHJlcHJlc2VudHMgdGhlCi0gIGNoYW5uZWwgbnVtYmVyICgwIOKApiAzIGZvciBl
bmRwb2ludHMgMSDigKYgNCkuCi0gIFRoZSBzZWNvbmQgbnVtYmVyIGlzIDAgZm9yIFJYIGFuZCAx
IGZvciBUWCB0cmFuc2ZlcnMuCi0tIGRtYS1jaGFubmVsczogc2hvdWxkIGJlIHNldCB0byA0IHJl
cHJlc2VudGluZyB0aGUgNCBlbmRwb2ludHMuCi0tICNkbWEtY2hhbm5lbHM6IGRlcHJlY2F0ZWQK
LQogRXhhbXBsZToKIAl1c2JfcGh5OiB1c2ItcGh5IHsKIAkJY29tcGF0aWJsZSA9ICJ0aSxkYTgz
MC11c2ItcGh5IjsKCi0tIAoyLjU1LjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK

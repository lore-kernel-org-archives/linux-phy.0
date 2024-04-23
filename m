Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED36AC10F15
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOQQ7OXVtUwCykWvzrXi+LJdzll3vbZDe383IjV/lKQ=; b=ZfKbyjcK2O+L9W
	lMBAj/l6ApRbCGWLet1k4gO1V4BJxsTtIx4jBxRuewdrvFsLsFlBZelvL6QwLskFXNGs7wqCz+xhI
	qO4kC130m6ssoAjPc2dlXNSrjEFvOYR7yrHsZOhCeEdzyo4PAF6QFmv/eeLS86VzcEpaXSvCbMwSF
	9NINkH3BF//GTgN9+vf3k23MtZLql0TgbAWESjH22tgExxi1SG+DdiQDyYJ1PWE3ejOzGLeCGhp2T
	LPSsN5ku1lU0pD86hi95/nCIse+0u1kX1QRtkFq5cVt+v4cVpYqpca7S7CExaR0rEmpCMe5HQAxHn
	1+PHGMc3jj296Ij84RAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5z-00000001Sm4-0mol;
	Tue, 23 Apr 2024 20:50:31 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5l-00000001SeE-1gBE
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:18 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-41a72f3a1edso20058605e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905415; x=1714510215; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=hg4tzd78mPMGuWNps1TfYf2MoGDHnVOWsFJPiUd+zEddqRF068y+8M+1MfWY9qxj2D
         GfnRS5NCwoESOUVsp4bVKcqWGlZW8pjklOqMOPaukfaSWY3lcRIejF+e4iFx41gLUi44
         kr8dLOts14MDTR/NufBsn9qQFbThmJ3TXboJkFsmYwT/u/IC4QcITjpfNtYc38SA8kMo
         COtO38QRb4T4YrNj6zcA7vs854nAY7j+q2DqYjJNVcp1fA5NnIRCKXbYPMtextj5Lois
         /MO4B88J8jbzm6Ip60P9TQP22Rbt7fm3OTE54sGiQj4z6l3rpJvuDRrbDeYGDvZhXR1R
         xG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905415; x=1714510215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=CXF3f9jzBMw1bRE0m16CT8gmI+WN5fO6vW/EKvVesUL+ftOdDnIVV1A2ZTSGe9LM7g
         /S1CNTAJQ5iurPTIMvw6xj3gjmxJJUkZT0hRiEP/8BbdJKKdXg7aGdzm+h0BuVwX/8cM
         elWN7lxqljPrVE5x9WwO3UYmCmfFAIAoicktNRV83r/+dW60Iynch+E+88msMt6ciQsr
         GNzNWZEoNo513odfk5YzzEDIJM/+T0PR4j//72N6B2cJ6hAu/rOsNskZK9Yis92WVMOW
         hwGz8F37zX+i9PJfTMsKrM/VyAYF2Uq5L8VDGJr9ktAOqrQROSbO6dzJ+Wo5GR1XoWhX
         F7SQ==
X-Forwarded-Encrypted: i=1; AJvYcCWd9VBHPUXWrkx2kiIFRkbxkgodQPbW7pmKqZJg7YvMyl6XZU4iLTz9kzRPBB+1+vUZRzpTvPNAIwEByDn/l89+sQD83wtqNe8rFdmRqA==
X-Gm-Message-State: AOJu0Yz1TvdcbyfMYPaDDTxvC6TfOqfTTiVgveFfY4vjRTYTNV8ZY/z6
	8ff+tQMxxVRX6ijeMwxcv82tVhZc7+H8pZaDnKloRsXzssTwljUq2FTZivBlOf8=
X-Google-Smtp-Source: AGHT+IH9p7rRQpyh3qjFY22JgIFm5zaFqK/Hn2YUUXTMJfPhSR4r4a+glqPpxsEltfaY8s2J4KBqIg==
X-Received: by 2002:a05:600c:3ba7:b0:416:9f45:e639 with SMTP id n39-20020a05600c3ba700b004169f45e639mr225716wms.20.1713905415398;
        Tue, 23 Apr 2024 13:50:15 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:15 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 02/14] dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg compatible
Date: Tue, 23 Apr 2024 21:49:54 +0100
Message-ID: <20240423205006.1785138-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135017_509406_0CF7D15C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
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

VXBkYXRlIGR0IHNjaGVtYSB0byBpbmNsdWRlIHRoZSBnczEwMSBoc2kyIHN5c3JlZyBjb21wYXRp
YmxlLgoKU2lnbmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8u
b3JnPgpSZXZpZXdlZC1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Ci0tLQogLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc29jL3NhbXN1bmcvc2Ftc3VuZyxleHlub3Mtc3lzcmVnLnlhbWwgIHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvc2Ftc3VuZy9zYW1zdW5nLGV4eW5vcy1z
eXNyZWcueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvc2Ftc3Vu
Zy9zYW1zdW5nLGV4eW5vcy1zeXNyZWcueWFtbAppbmRleCBjMGM2Y2U4ZmM3ODYuLjNjYTIyMDU4
Mjg5NyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9z
YW1zdW5nL3NhbXN1bmcsZXh5bm9zLXN5c3JlZy55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2Mvc2Ftc3VuZy9zYW1zdW5nLGV4eW5vcy1zeXNyZWcueWFtbApA
QCAtMTUsNiArMTUsNyBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSBpdGVtczoKICAgICAgICAgICAt
IGVudW06CiAgICAgICAgICAgICAgIC0gZ29vZ2xlLGdzMTAxLWFwbS1zeXNyZWcKKyAgICAgICAg
ICAgICAgLSBnb29nbGUsZ3MxMDEtaHNpMi1zeXNyZWcKICAgICAgICAgICAgICAgLSBnb29nbGUs
Z3MxMDEtcGVyaWMwLXN5c3JlZwogICAgICAgICAgICAgICAtIGdvb2dsZSxnczEwMS1wZXJpYzEt
c3lzcmVnCiAgICAgICAgICAgICAgIC0gc2Ftc3VuZyxleHlub3MzLXN5c3JlZwpAQCAtNzIsNiAr
NzMsNyBAQCBhbGxPZjoKICAgICAgICAgY29tcGF0aWJsZToKICAgICAgICAgICBjb250YWluczoK
ICAgICAgICAgICAgIGVudW06CisgICAgICAgICAgICAgIC0gZ29vZ2xlLGdzMTAxLWhzaTItc3lz
cmVnCiAgICAgICAgICAgICAgIC0gZ29vZ2xlLGdzMTAxLXBlcmljMC1zeXNyZWcKICAgICAgICAg
ICAgICAgLSBnb29nbGUsZ3MxMDEtcGVyaWMxLXN5c3JlZwogICAgICAgICAgICAgICAtIHNhbXN1
bmcsZXh5bm9zODUwLWNtZ3Atc3lzcmVnCi0tIAoyLjQ0LjAuNzY5LmczYzQwNTE2ODc0LWdvb2cK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

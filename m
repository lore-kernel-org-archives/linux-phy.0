Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB19CCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 16:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVa8GPEWHxfubqAkYnOEfMf0gW3TlmixKEPR++PEd0Y=; b=UVZ4yhBXBXOzUS
	FTSEcUvDxH2/25r5u89ecUBt42rHqPJHw5cGHE6tfv+6GuaFCNKuErjfSzbS9XoG3s4mCUoE6+OZE
	POoi8NbZlMzcq+lSCi3EsamTu3vRhD8Wsl5hhFG08uBBlAbVyMTrZ2o+2ApbuGoa20Bt5Bt0zoDU7
	APnym8m6UDmPCMqk3Iz1vT303hGCkIuw66dUMNNv0Atv4lUU6xcnFvq1LIcI2C5xxCgYwwRvmqOR+
	fBkmCJEzlSd3HK8PeoZNWIdad7UJX3aU/XgUd2u+WAGO7T9KvT5WE00RHHgqs20yHW8dq6nmSAmSD
	PZXkcbAwVnPgMArpBjpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6A7D-00000002LNI-3fPP;
	Tue, 07 Oct 2025 16:00:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6A7B-00000002LMG-1Zep
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 16:00:38 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-b3da3b34950so838133466b.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 09:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852835; x=1760457635; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mjKb1ezpRpl7M3iFhpiWd2sjqaAYaZ6YNqsdcXvRIf4=;
        b=UQZh6ZTIw3RQTuhACN7FCLKcJVqNVRHNvWUPyCCV3FkjSueBH5p5oHkBqsM691KAx6
         X5NC7+bVwJx6S0V9LUyRzuMJAM73HD53gCeHwbm3uxv1tF4DxnU6wG+1C/28mhsiVQGb
         gJdAV+Z7MEyjbLAjg65wig5z+R5yJqARuQqFpAoelyR4mQ3wMv4FU1LJgX+TFEpSFgs4
         epgOPEUAT6zPaXHAu7pBvJFjtZ9OW8FFcHmjGdkL0yoblCq+5Q9WCMdi+ItZDnYs3bcF
         235ko+PPYak4XH+j2czUOuyr3rr8Wgv9zmnfTIuNSnpIbBujgpWta9BiklQdbGCBDBGM
         Qkzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852835; x=1760457635;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjKb1ezpRpl7M3iFhpiWd2sjqaAYaZ6YNqsdcXvRIf4=;
        b=P7Vrkc4XIk3Znzy09mnvWoNWeoDchjuqQ3jgd8hsMJQ25Kt95HD7qLCKux0WVG99y+
         z0uktKq4FiJhwtH9B6OY89pnzRY2RBqnXjgta7ZZjh9/CqLpxPcOaDvmMrigcKlgApWQ
         LXwhMXcU72jSnzKTIB+Dt2Q62YMNHQCtLbhBWm/aCglPx3Lk0LbRd7hTtbyLK7gPi0kR
         ft/CfIKHR1rcph2IpbA9gsnRIdWLmvIemwJSnlCjyKpqePAQIDmNddG1hUAwU1XqBlgJ
         mCIweocFfOJta6nxsU5vUSGt2DZ0mW1drYUTlYTU4DNObMC6p63gjMLyR3jVLxw2IqqS
         8H6g==
X-Forwarded-Encrypted: i=1; AJvYcCUa1mqRO9ZoLieqVzVezXgXZEGSyGtWivyt6eMO4tXYVz7YYyv0XKn0bmckeHoQ1Hx4DwvW2hF/rAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzngOZCuvJaqkg/o6xouD9RqvJc/YkztXgK5cPedcHXUb6W1a8X
	pBSK/9HRPsaMX535HOyUKeBInD9LW45XWxmQjse23MCpPRyifOGV6bU+AorBZMM+FnPpvokhDir
	gblfEAm0=
X-Gm-Gg: ASbGnct5Mz4tvyEDEPiSBEG9nbA8wjoeGiFFRTPR6W6JVAfRkkkOenlcZ4iN5RJCAzw
	GYkuc6hYYFAD0gYdS7XTBQuSylnFeNM5J0vwU1AY0D6lTfRkb3jO6NS9TYh5Ut8/8bzsGmrq/F7
	TMkraJjkZ2BOLUDvlztoGuqECbVBLeWuy7cDaHCDJTO8FdHnLIE9NqTMROvHqeKUr6gvvrWChSL
	na0SSgH45yaCibgqH5Jm5OEtMCa7MzeSiySyo/vsAe/uih9jarjRq9+TDiEBpKMnduvYLfomm7d
	FgQC/1RI+uYKuHxhgfaBiCeAab2ikABGTXzE5r6QKkjZjmgmjHBmhmjdNexUbjMxefUIVug8uW2
	83f+O+qiVD8fLAp7hR7kNLXOKDHCDqg2GhKR1inUF4/aPLzpmmhcEH+ioQvFWBeOXJP832vZLw1
	jJi3I7o2iZY5ZgBixUAElaoWSz6yPV22WkWwSguOHi
X-Google-Smtp-Source: AGHT+IGyutPnseJcYgmno2XcoY0l08n3SSLeGdWklnJBKgIvM1+oFnfvYzhNSc6Fhvupmb0TG3Vp6g==
X-Received: by 2002:a17:907:2d0e:b0:b3d:98fa:b3fe with SMTP id a640c23a62f3a-b50ac6ca199mr13352866b.63.1759852835469;
        Tue, 07 Oct 2025 09:00:35 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b503c779df2sm96445566b.34.2025.10.07.09.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:00:35 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 17:00:34 +0100
Subject: [PATCH] dt-bindings: phy: samsung,usb3-drd-phy: add power-domains
MIME-Version: 1.0
Message-Id: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
X-B4-Tracking: v=1; b=H4sIACE55WgC/x2NMQ6DMAwAv4I8YymkJEj9SsUQGgMeSCJb0FaIv
 zdivBvuTlASJoVnc4LQwco5VejaBt5rSAshx8pgjXWdMQOW/CHBmLfASbGsP9Sw6Z4W3HV6YJR
 4y8lZ2zs/ePIBaqwIzfy9R6/xuv7tiLp+eAAAAA==
X-Change-ID: 20251007-power-domains-phy-samsung-usb3-drd-phy-b52245676e6a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_090037_433377_C117EAD2 
X-CRM114-Status: UNSURE (   7.76  )
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

VGhlIFVTQiBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21haW4sIHNvIHdlIG5lZWQgdG8g
YWxsb3cgdGhlCnJlbGV2YW50IHByb3BlcnR5ICdwb3dlci1kb21haW5zJy4KClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1s
IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNi
My1kcmQtcGh5LnlhbWwKaW5kZXggZTkwNjQwMzIwOGMwMjk1MWZmMmJmNWVkODQyMGQ1M2FkNzBl
YjI5Yy4uMmUxNGU1ZmJiMTMzMWQyYmJiN2MzZTJmMzdkZjEyODA0MTVjNzllZSAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJk
LXBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ft
c3VuZyx1c2IzLWRyZC1waHkueWFtbApAQCAtNTEsNiArNTEsOSBAQCBwcm9wZXJ0aWVzOgogICAg
ICAgICAgIHNldHRpbmdzIHJlZ2lzdGVyLiAgRm9yIEV4eW5vczU0MjAgdGhpcyBpcyBnaXZlbiBh
cyAnc2Nsa191c2JwaHkzMCcKICAgICAgICAgICBpbiB0aGUgQ01VLiBJdCdzIG5vdCBuZWVkZWQg
Zm9yIEV4eW5vczIyMDAuCiAKKyAgcG93ZXItZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorCiAg
ICIjcGh5LWNlbGxzIjoKICAgICBjb25zdDogMQogCgotLS0KYmFzZS1jb21taXQ6IDNiOWIxZjhk
ZjQ1NGNhYTQ1M2M3ZmIwNzY4OTA2NGVkYjJlZGE5MGEKY2hhbmdlLWlkOiAyMDI1MTAwNy1wb3dl
ci1kb21haW5zLXBoeS1zYW1zdW5nLXVzYjMtZHJkLXBoeS1iNTIyNDU2NzZlNmEKCkJlc3QgcmVn
YXJkcywKLS0gCkFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A566C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Aug 2024 18:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfHmkpQw92//hlnFFr8pgDuzrEfJiNlK+eZ5O6F4oJ4=; b=dVyLIG1NPJaWVM
	4rW2R0SWx5NysXMLllrEaEUj6MBZELKQIiMZVsaTbSx7hGaC6NNAN82BeBuukYDDnK7VuixSdRRua
	f2N2zPq5/ddlzimNWx3tUwe2w47/0nFbUSV11xrT7TNsLYQ2UM7z+LnjuLulDE6i5LszvYX4KHr7k
	Fhll25vCEOA0ztc0pjIX6l1sQdR+bVDzksXMmw6GqWiGaQ981yYzoICEITw6yBIiaxc79yZDDikcP
	aUD1t8g0Teo5LuzikBT3OWHhu6Pfw2pyMa26Urso9M8HZ4te2Qc0T2Onq4lkTwJ722K3bGogAkcYK
	FQlbV0NpOOkeihN3gq0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl6o-00000005u1x-3tMV;
	Wed, 07 Aug 2024 18:10:02 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl6m-00000005u16-211r
	for linux-phy@lists.infradead.org;
	Wed, 07 Aug 2024 18:10:01 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52efa9500e0so91220e87.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Aug 2024 11:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723054199; x=1723658999; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VvQwopylpTcNNrDojafDg5hAThyB/Nm6dXGr8JGpA+A=;
        b=iuZnSU0D8sxznUrJjzQgkL3Vs454NYIqjH8lrosHiEneNRmrdiNMa7da5jvIrN8/sr
         reFQIQijk0PN9L28rTbkHTS9SGL9PuOJeq4196FZFRS/Idhhd86fqBNGd2W2ashlfqcu
         y9CyYph3xno3SiEQYR5TIGWS1nJ3X2jLD88ttvAE8gdledyV/9OGhu3bh1emwtf3s5Jk
         OXEogazG8Hrhs1xcX68965iA6szTBRV1tgSZZLOJnf/zN8lSqU7+06uLDmrZPvB0Rp8J
         c+WnwC8hgBJj7tMOkN4SR5o+LunKUSRuaPKmoYtioma2kkK9QG6S4e+h4QIl40oy6GHE
         ooEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723054199; x=1723658999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VvQwopylpTcNNrDojafDg5hAThyB/Nm6dXGr8JGpA+A=;
        b=rnxAV2tNpWjokmAfauX4LdNvWHg2hMdo3c8PoKTaWtpKJJBD3NfV+30vQ0B9dkE+0F
         7kF3Y7EICMoyZHCkVyd19rpKiUo33jIrUi2WMu1UpccL2TjfSgO6ImmROXjh7CuT38yI
         NX1PqFsEu4Df45xyOmbUsSkwC6bL8Aa0zMbGkhkJ50fi/rPw/u5Koq5S8cIPLipv/XqI
         8f9JPNgUN3sHicej424loHsrL7zltmFq/rUdtPhIB8x3jQ7+piBhnhp31L5q6ZzjXhTk
         CEO39Ev2FnuctULbwz3iDu4GDnBeEkKlSdPiUplWr/cPIERxtTo+BYjzF+TD0/1ivuPk
         x+3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFgzzFG38dvILZKDHng/zhVIEjjIevg6DA3+AMwx4sj5Cib2s5SgRdHgwjqZGcAdT+pDe1LwZb1DJadYsDe1hJPTLhvMCrJGfbrXDH/g==
X-Gm-Message-State: AOJu0Yyxee6afm0iNGCGxNttZleKx9G9xoqkoCd0bIAwS9Fmv02M4q58
	1oPwxQxnGM7tugVTvKABt96WoA5PQxiJrsCfUEL4a3vE05bBP6zt
X-Google-Smtp-Source: AGHT+IE1p0KvtyXH4tArk9IeeKyVKqob1VTMUZulp1j/uYXdIC9x8IkR+3jeqgl+4TIMi5I0M9B3Dw==
X-Received: by 2002:a05:6512:1243:b0:52c:df6f:a66 with SMTP id 2adb3069b0e04-530bb3b189cmr10442926e87.58.1723054198397;
        Wed, 07 Aug 2024 11:09:58 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de3e2ea2sm328995e87.36.2024.08.07.11.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 11:09:58 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v2 0/1] phy: Add support for Microchip ATA6561 CAN Transceiver
Date: Wed,  7 Aug 2024 21:09:55 +0300
Message-Id: <20240807180956.1341332-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807180210.1334724-2-ilordash02@gmail.com>
References: <20240807180210.1334724-2-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_111000_541987_19008E58 
X-CRM114-Status: UNSURE (   6.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

I'm sorry, I missed mistake in commit message, fixed it.

Ilya Orazov (1):
  dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561

 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

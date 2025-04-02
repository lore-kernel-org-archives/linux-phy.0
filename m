Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 130EBC28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 18:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b/KdGrTZgPvaqHyd0jriBueJhc4GACz3RqnsXUT6bmY=; b=YU1Qg7JTUk8OaT
	19hSJEyc5nYdbNG6oYa3NGKkN7oO7vEURHpM2bEladLjpcfqGTPw9PwlBwNK/OQZfaB5QBr+/8tqL
	56oD2w7bvxo9npxiWwdZjxICEYN/9BVhwVOMvu2PfflhbgggISJjpaknZUmM93M5Nj3Fjmq34DBy1
	0ey9vdJrGMd9UbnggbOp93AbOvMUOaGzfxvxi72fLgA85S65T0fGkgRXl17atDHWb0feHvjbx04ys
	Q6qC69Xp/SF8cw4BKx6HVqv44EIQKnEL99amJJt96iGGqX+1PgTPE8gEmpcuKf6Qukt1jNGgoGZfK
	3uke21wGyvlItXT8Hd0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03C8-00000006yXE-2BYe;
	Wed, 02 Apr 2025 18:52:12 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03C5-00000006yW2-3qf7
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 18:52:11 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3f94b7bd964so80669b6e.1
        for <linux-phy@lists.infradead.org>; Wed, 02 Apr 2025 11:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743619929; x=1744224729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMSMxtJGALgtSMPuvM+es6h4Iyyq5oXkRDZi7PrpWMU=;
        b=g9lWniaHfmewvNelI7ZYlqFZ9bovsC1Mq8OqdkZnG2Vga8hoBLVF4Cg9wqg9G83W13
         IguDiafRNb1mvFXpyHPL4zxtwwjoi1jYJhKsaZGVkgw7OTsdfi0krfP8jLSbKq+7H5KZ
         njWP3z/8E+Qv27gHpifHXUIB3QCyyqCFx31ro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619929; x=1744224729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMSMxtJGALgtSMPuvM+es6h4Iyyq5oXkRDZi7PrpWMU=;
        b=Ju/XiA36wFdZw5hLTf9ubq1G8kxyjk0NR5vus1oXaPEM0lVEqg4k62fgZpCLC88eRP
         3fYJWBcBLLw6Jtj2ajD8nMcAR9c/06bigCdTpwzGBRWesBOhOf2tB8fzIcgagTRJsv1s
         H2LTvBay1DJYiKjE0S4OkR9CFWYoSTCLl3rOHrNrioz69sFdAh+LDQaafps2Mu+Hkt2C
         q1O0GBmwfSJu6PfRf166CIR6sYK5KxACXsxFhrO/jnkZYOiF2UMoKjSSc80V0Vgu5Ip2
         iHrqhMQjB+X2M+LdsmJQVCfPhP0cIEOdGROf5rZn4q6FC7ocPEijZgUXkQTc8mYysxJe
         HoyA==
X-Forwarded-Encrypted: i=1; AJvYcCUPJjgwlWPZ6/eZAsbfq6Vj6lXuu7O9jObCVfCh2QPrehrrkLh7s3wJLAWomh4bIOUytSttv/qBxEU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6rj32MAp7qfWQusjL3CIB/y1oYzBsaaEQf2ntjdpNS8Hk8LLR
	2fOyGlfTK0ytq8t9gSRZcd7/aMbaXnDggNX0yFOLczoGX2X++tnbV+0HBjPHTA==
X-Gm-Gg: ASbGncuZwjUSZKvqgBIjOvPEClWJCElRR+DcgO1kfvInwmT5FC2/xaGuLOZsJDiiiq+
	og1H5yXAqeohIy92zRiwcOiSVTPuZU0PLQuFONqKvg8Dj5Q+fCzzEXTjN+WQZzeZ1+NcRungjqg
	Fed3np3ZYhZsre06M3gkG4nYXWrD3HoyGi15qC1HNyavQeFzUwaThtvXEdJhur121MYBhYb/f4Z
	sNrXqyyeyTG3usLE/1Mwu+oxiRcC8K0LJeQbRSDXlr6PtKl5A3TJc6nS6phrdmtO2uCvVh+w2qL
	T+BoK4A0Ovr+vKot+MFUWMSM7v1dE0MtMBsBAqfya71hfOFecI7DPxupMZ3mC+l/CVVVwQmwi5X
	fXmY9ylaaIS2g72mxSbFdtw==
X-Google-Smtp-Source: AGHT+IF2oyF+SZAWZtK8dqvuEYk7hltRuj0cB3ZM/AI20F98RrPPB5PiVuTkMpiL1IWiNu1BJ9n9SQ==
X-Received: by 2002:a05:6808:191e:b0:3f9:a187:1f5d with SMTP id 5614622812f47-3ff0f64bcf8mr11348947b6e.35.1743619928688;
        Wed, 02 Apr 2025 11:52:08 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2470462b6e.28.2025.04.02.11.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 11:52:08 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 0/2] phy: usb: add support for bcm74110
Date: Wed,  2 Apr 2025 11:51:57 -0700
Message-Id: <20250402185159.2976920-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_115209_953321_814A2726 
X-CRM114-Status: UNSURE (   8.36  )
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

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
  phy: usb: add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  5 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 80 insertions(+), 1 deletion(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

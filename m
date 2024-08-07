Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCEF0C52D73
	for <linux-phy@archiver.kernel.org>; Wed,  7 Aug 2024 18:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHgIrYYv/4ucrSLICTcnyBOFFHYDnlqiS1ZWxcp4Z4g=; b=ZC0IH8NpWXwwV0
	EZWXZ6WELCtbIPz6sglB9X/DUj1lv43z/ogTeIwddsDag44Kxw4UNJlys3JQGYlV8KFy/DLVUVBeQ
	CY8QoEYmg4onxCOIr7JVJriT3r+MSNzeYP3tLJ1F/+beAtwxAXm/YRI88RfTWtnMyuWvHUWeoxu3N
	PlsQB9k86uky8ID/sh17A136tncNfhCPfl90jeJfSKrShCOoaPHhp91VbuMaMgI2FKsyDfuhhk18a
	0Nc057SnguqgIzuNhesEal4WyPDjPHnxCsAPNitbAa458cfOq7MhbEMP1Gh5sTIsKuQRsYYDmDVAr
	S5tItIxBadkuNV7jWdWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkzJ-00000005tLP-2Sps;
	Wed, 07 Aug 2024 18:02:17 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkzG-00000005tKl-3wSn
	for linux-phy@lists.infradead.org;
	Wed, 07 Aug 2024 18:02:16 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52efef496ccso105428e87.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Aug 2024 11:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723053732; x=1723658532; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2A9g7BZ+7ZlUH3giGRSRTBy0XcWPD03E9Hqr6OCk7w=;
        b=Nulu9BfO3lf5twSPt+rOdcixlROwEdIyYXdth1BKUmcS/s+vZfjKh0v46YuEqLfl9m
         zmpe9ptwjsHpkx+AqRZn8o0wfzE5SfdJA6gNMJiJ07kt+/CPM60/0yD2uMudIZq9N8BK
         h2n8mJ/pWj3NZFnWIh5DrowRF9ctNs9eQyPAurqzonA4n+nlq8lcukZ/h+k6oSiUCnrV
         dquzWHd85iZjDwTT5xcIXmEFUXDUAxwjvtEpeoH5K+DlGsnGuhxA52J0jOe6L0502ruo
         7hiB842k/uSM669unPtu53/N1c2XDFA5BJ36eTFrgUc+DVSLT6qlnMnks52n5YrEb/Ys
         feEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723053732; x=1723658532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2A9g7BZ+7ZlUH3giGRSRTBy0XcWPD03E9Hqr6OCk7w=;
        b=DEAPsR+70YDezqpJwr0MA+u8D9jDYeDtU1P6Gb8cfkjfOFYscYbEYiL+D+lniVF8EA
         WL3zU3XjaCXSGDCSj12/9f1pTFajsLYM89al2LAvhH0jav1ADevEop+6r5Tlls/9Scya
         YxHTBmjxEswkFwE7SojzBo1FzCZvxxOmDvQgRgpXzfXxzyw/8NHaIWl9uulzGETR9PVa
         NDKziFZ9TmXvq7K0p0U9SW+8M+UtQw6Hc0K12uwpNQTgVBDM82dguSln58AA2B6ipBe/
         biOIr0eg6oeWRi4PIGlEDUcUUAmCyzfiNfWsGbFs7s0o2+Y7K3HZ2FwuYCVOaJeTUv+A
         16Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUCc8Cx6ti8YDAmiVf2X955KHQa/bN+pSCh/xRvLwCk3TEMHa/fNAlv1srV5w8pWomxLmxY+TTEAIk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0mSoYS5y79wf7L31WeHIh4hq2XKS96+KuTRfUomIVxgx/peJy
	FQgVMftSf5coeAieeFveigeBVhDN87Pyl5PKYJa1f3345ywa65qr
X-Google-Smtp-Source: AGHT+IE2BAMAPFwwogEC7hzieoxMnxVgSx0NiFFKKZ6GnjLEufMNH6xnC18sqOZH3VFa6Qgw9qtuQA==
X-Received: by 2002:a05:6512:2385:b0:52f:336:e846 with SMTP id 2adb3069b0e04-530dd9051acmr879884e87.14.1723053731989;
        Wed, 07 Aug 2024 11:02:11 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de3e2e18sm332454e87.34.2024.08.07.11.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 11:02:11 -0700 (PDT)
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
Date: Wed,  7 Aug 2024 21:02:09 +0300
Message-Id: <20240807180210.1334724-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240805-fruit-chip-cf08a0e166a3@spud>
References: <20240805-fruit-chip-cf08a0e166a3@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_110214_998712_A200F00F 
X-CRM114-Status: UNSURE (   7.20  )
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

Ok, I changed patch to allow ti,tcan1042 as fallback compatible.

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

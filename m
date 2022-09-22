Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A96B4C32771
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 02:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFimdU7qH8BXVHJ/v2/dAbz9g9zxh3x/sWQHbgHxorQ=; b=sg9+S9pvPIUXu/
	6n3wfoQ7Zud0Sffi4E/MFt3AnHB2FNO3I8BBtLjc2cQrpY6fkwYQ1leGxHALA9pwYN/eIP5HsPo6i
	UH4EH7U/IPyHMHaQa+ed5xkNluWRW6ZfMtOG2CJCJbuV1odWv7LS+cifIc2ZKNrIbv/HmmTqUrV68
	xVsrKoZ4vrzXGi/xzunSG0/kgTUFnFKJkmIrZx0CXHPT2zezcUzb8YFdWPDzseP6l1vKOFlIVFCqU
	PvjCeH7Jb8STqV1qr5x7jmm2dIXFdPtAtC/oWZsaEkl7plzmFaM8UeGs33z5sc3j3uDZeMAPQD5Vm
	e7wtFXe6xnmPl83Vaa6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCB7-00DAai-TZ; Thu, 22 Sep 2022 02:43:05 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCB5-00DAZe-R6
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 02:43:05 +0000
Received: by mail-io1-xd2a.google.com with SMTP id e205so6689758iof.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 19:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=xNcnn4jL4IZe3ZlqcZaLceLcSUnWIU8oO+Rv1oWAims=;
        b=A6v5lroDUrohUlJAoDACvvzyGHEO3N+kOMGaq8GtJ27INc5OwVb6uc5GivNgS6oaSA
         2Z7t6rJdDCeX7mvrmea6V9b+FaYig7sC2Nt3TFzVjSXq9IczWJxIdtY25Dk/idwWZheu
         yHJcmBDyV1OMEH/yuH/r8ty4ZKrxKOaOrHG7w9bzLhMXXhc/+o7Y6BJtDAfHSEW3YmUq
         MaTrGVXRLxIG5sM3DbfHpT3oSIw5r8QDjxhkpRB5rRyqKLC9BsdZGdPkNr+7br/cQeWC
         0ZXvcmdOAqJBoZ53Ov1SPrxSfn4qfPLlZQR0yXprxt6S4UcuoLtOFH8mkK6ooEauUyxv
         V2XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=xNcnn4jL4IZe3ZlqcZaLceLcSUnWIU8oO+Rv1oWAims=;
        b=2rgMbmXDTDu3ummegc0YeI/RzBP/JyuUsGAKgIv89VgePpCgoA2UFdDVS7CjBNo+cX
         teTw43qKf9FYcQaacQpVKb3afXKpT3pGMAR4uPt+HAZ1EsCjsGROQasS4F2VgOm2jCwO
         Bs5cmOHGFakwyMZm8jOu4DjjhinRLrGQ3gm2ZS+qU7/oONo9fKfLJ3c7JUwr8SB8BQMG
         X0KMMfo9L85Slf8TWopAXlvOqr9CKBW7MYGf9QILX/UKuptZG9v1dNf6GTsJ5P6/er8f
         VGdtyoxkuTonhIycCjEBOkoOAnHs62TG78p5FmxgRVkytDjj9VeKwEX692H4sAZ/G8Fz
         Ewiw==
X-Gm-Message-State: ACrzQf1eISatBx7u1NS7FE3CfFsEKwrbfY2RWteTGDlWkHLbodfrRYqm
	BHpPGMN0vgHHFcGO+canmVo=
X-Google-Smtp-Source: AMsMyM4lTR9rAMGNjLP1fXBJL+OH2wTxgAeuSqnmEhhaHZP8SmjQdM60o71QJOzqMaivONZ3oEe0Sw==
X-Received: by 2002:a05:6638:339c:b0:35a:28d4:2189 with SMTP id h28-20020a056638339c00b0035a28d42189mr704698jav.176.1663814579829;
        Wed, 21 Sep 2022 19:42:59 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::61a4])
        by smtp.gmail.com with UTF8SMTPSA id q14-20020a027b0e000000b0034c0db05629sm1691832jac.161.2022.09.21.19.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 19:42:59 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: usb: dwc3: add sdm670 compatible
Date: Wed, 21 Sep 2022 22:42:57 -0400
Message-Id: <20220922024257.178428-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <adc622c8-d2b4-5867-60eb-49eaf10cf701@linaro.org>
References: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_194303_898036_31D6CDFD 
X-CRM114-Status: UNSURE (   9.05  )
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

> On 21/09/2022 00:43, Richard Acayan wrote:
> > The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
> > that.
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> 
> Missing changes in allOf?

Oh, I didn't see that. Nice catch!

> 
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

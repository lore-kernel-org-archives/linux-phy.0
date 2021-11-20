Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58E0C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 23:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGRlxJhnTgIZOWg9z6A/ihA38QvOnYfk/hB523/906Y=; b=PGHRPcy/4ta4gy
	kQeoETm9T3wWrGIMQ6P827Tu0iEY/1OBleosiRXtqjhOTLORYwJdhWPqUsVJw6PBJWEur45Fdiz2P
	LPHMAbY/JqW3j/WY59tBhwZUqyKDshH2Kapc/nRuTWg4nSAlMILh2f7WMLSrTYrQE6V+yQYH0UZGb
	5OOf9VD8DW+xQzcqaCaVhMT9U4HV+1Y8a+zJOta1d1dqWFXX5PJF9DxWHJAaDHcUnxijRs0YOmac8
	5TdY7JlvDB6buYAaZRocsWe0nabZNm+5M5xPpa6wNDNNy3Jr49lrf8RGzv5WUfM2JEtFfWPg4tP1b
	6lN0FvIAJxWz4zxUa7ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moaD9-00D5GE-Vz; Sat, 20 Nov 2021 23:55:59 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moaD6-00D5FT-QG
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 23:55:58 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 u18-20020a9d7212000000b00560cb1dc10bso22681183otj.11
 for <linux-phy@lists.infradead.org>; Sat, 20 Nov 2021 15:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pSPopdaF+ihVTA4ijju/5cBbM6jMosSNPV3+XmETCpM=;
 b=I03PNyMyto7mkvu8Y7aNx7YQP6EPgsoLHyseIWYAjUmPpHZ0IADZbYtEU+j7lOgrzT
 mKVyC/KRKwyq4LkrnTUrtJ9+Aj5ZeN49H30QkvKXNkx0kEiGEGtTn5ElgKAMgI2fLgQ2
 Ohj9msXoyJMua5NAzq99aBjzACm8bLOXTaOt0cEH1lHRCPes3QFyik3CuJLkkvc7YhjA
 geXsQFoT/7vS037ckn/sOC2y9ZX0Wnhx2h5Z13rn3mXOEC7Q2qu1qaK5oSlTnpdqBGQT
 GPpig5RmcdYHyngrUUSAf63sDlJFMKAO/kWACrFbqYK/OOU9smEAo3UHoIiOEU0NxC2n
 zGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pSPopdaF+ihVTA4ijju/5cBbM6jMosSNPV3+XmETCpM=;
 b=W6bclL3AIjruMK2T6jMrD6xnN1L76nBYGL56ewUzzIi2K/ts5qDx9M3OFAo6FMx2PU
 1QSENQQoFmsOocUwRxFuc8wwMLcRUh8kHj8yN/fIHVSEi7OWEvODtsHqqlKSnE7FuLRD
 RJENgbiz6sFFHEuXhLVMw10AaIW+0da6fcYICcGUMm5XYbabdPlm9xtRmRPArz5gnCM8
 fapRjD1pR/fvE9VX0rkxO9tVtT+SV+fGnbxo3SEa3FByswj31aAe8QHvNFgKdfxq1/nq
 uK6iJYt7ZzNHczlE3zGEsmKplyss2luELL/iK8MLoEehxIwv6OA7GJxYWDOV+kZ+1RxO
 0aJA==
X-Gm-Message-State: AOAM532kULgggRhdby05YTo9Yljtprvm6ZWMixeA6EtcRXtDBk7EdYMD
 PAPt1f0zrStO3vL7jd7FZppcJQ==
X-Google-Smtp-Source: ABdhPJztdwDk3EI1NtJbxWSm86apzdx//aaQW+xl4RllMJ2qfqlYFcnF4S+Y6wtBVwqnK3rb95jxDw==
X-Received: by 2002:a05:6830:1514:: with SMTP id
 k20mr14061162otp.147.1637452555925; 
 Sat, 20 Nov 2021 15:55:55 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 15:55:55 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Shawn Guo <shawn.guo@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@somainline.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 3/3] arm64: dts: qcom: Add missing vdd-supply
 for QUSB2 PHY
Date: Sat, 20 Nov 2021 17:55:31 -0600
Message-Id: <163745250542.1078332.12783986325450706739.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210928022002.26286-4-shawn.guo@linaro.org>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
 <20210928022002.26286-4-shawn.guo@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211120_155556_871742_B51DE3AC 
X-CRM114-Status: UNSURE (   5.97  )
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

On Tue, 28 Sep 2021 10:20:02 +0800, Shawn Guo wrote:
> QUSB2 PHY requires vdd-supply for digital circuit operation.  Add it for
> platforms that miss it.
> 
> 

Applied, thanks!

[3/3] arm64: dts: qcom: Add missing vdd-supply for QUSB2 PHY
      commit: 5663ca59bb4f1dfd2501f2af0bfdca93c4d47b3a

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

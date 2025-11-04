Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A67CCF9E3
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NV+cuG7qV23Qw4TY/3FvOaFgkr4WCuHCt4NZLNDsks=; b=r2pqkLK7bmWwBj
	zfL9Nfc3kN0w2y9Q0KcWUhKPije2yQqffetTbiPhRsYeroPcZtCbXrTwe79YDNpCUZYO8sIlueTME
	nq70Pt6x6CBS5+VvDV6viMOw57RWU4EjlYQajgbbhHO+fzCxxcv8n5sc7Rp6YrMMx5+ECbowuHkFE
	kHRUxcOEs/DDpcni8/v9bdpacOFINh9pyx9G0hlFKtmQLZkNtUgYUtc7oZcpFeNohLsLOku3ZTPX7
	p9yFzz6w6fYV4NmRqSwXARNWcSK4P/bsA4ZZ0m1NIjqSFtlCI58zLLUygcmcI9bwCaCa5sekQi0pl
	4SDID+TJCOB758iMhn3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGD3a-0000000BW60-1Rtk;
	Tue, 04 Nov 2025 09:10:26 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGD3X-0000000BW5a-464v
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 09:10:25 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so42769895e9.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 01:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762247421; x=1762852221; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DpweAw5zruf0A8JomoHVO706aMoW4BuNB+DPtZgoR0c=;
        b=NRDVBlszhQ7REt3q6LYXyku6N3kyRZaQwj20nXYmIIGIdkJVBBDSGPgN5QRK/nYbSm
         y8lHvqi/Erudr5vkXuIDcJ1wdZg1XxqYfuP0oJm8lkc7zztpp+anbNVvvqOdVtRKzTBK
         9E8f4KXwxRM8c8+rXPXjUalgz9s6+o0+47lGV0UFTwjxB39gBOw/EOpDAQJk0POm1RUV
         Tn+5O4sOeok7EQm1vl95zHf+kZN2N2DaufWDPVJdjavvy4hYKwdQaxVz2YPNs+LCowKS
         DKTuBFOHCep1PswIfDl97DMpoYtkAxOHmk60YedryVyV2Ga+WlHdqwG8dxBpbwzAdSum
         uzbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762247421; x=1762852221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DpweAw5zruf0A8JomoHVO706aMoW4BuNB+DPtZgoR0c=;
        b=XBwyFiudzKPwgOLD47KmsNYzqlFnBmjBh3YrY9AebldHkn8fflt3qj+bYL9HN/fxpS
         GnaooR2TR35HCChYW2XSz6PVKq2DVoghTD6P0dd0jRP5jYWw57Vn/YFeBGXFBkFvPRNW
         MBHsbGueAJ1llEQJPXaqRyNd5IcOq0WNtdDMwnx/fgGAx9JN05S8R4+VfYSMRGlPPrCf
         cKKkdZxpozu+9mNZjm31m7HX4EmC+RIpmA/PclXZln+uT00tFlean2e4fgNg+UiEsoF9
         q7afET8n5qTbguTvvXxAPNs8U/wx/TEm2aPPkPcgSq9aJ4Zeda3om3WOUBFtRL2C0q7a
         bHtA==
X-Forwarded-Encrypted: i=1; AJvYcCXgbVmIZtCW0DlnT25GK9FZdqTKElMrZLOzEc11MNddoXVHy4ns2m/UVk3JVK3zvI/uFPfkKJ/BxMU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4TquqlitFBBMp3szg5j+DtrufR9i55b+/D5ML4OLVOolMlxo6
	fRbqpu9yelnNLnThjU3eBxtij/HEnvkB9D7sdchNqMeVfEDN4noYcjiKbYM6tz75PHg=
X-Gm-Gg: ASbGncuG5nz2xqv6a/THadkJFLLH9i164+0TktxJJsj82eQ9eDPUliL8JKA/UWcGNmI
	qtF4dSw8GLx2JVGN/SqlRWTUF0wU92Tq5wI2gHJ/uD9DeESjBc7tHJqOUY6oO3zzf2XGmsQ4D88
	UxeDc6nCHPwSNjqNMq7J/dqJHi3s4jHiKiaWCwRRcqWdaU6di4+o2VZLnAHbsTIEY3cZU665sOv
	0vaDqdoxiji5EoG84zTjnqAXkYKG7NdaKQ0XhQKXLnD7FDVf9jcIEkHUfp0mVCBEFkNQTNOcPHQ
	9s3ZtfxJ0+wILi1xwJJotOm+x9VxjL8u2JzVW6UaCF9rwxLl06psQ0HLImm5Gtp/Na/3YeVCEOg
	8/hwm3cvlhl1Hm2VYhBB/phrh+OyNPjKaTZz2dw95o67X93z8cXTYlO8o1qpJENXn66dXe6/w
X-Google-Smtp-Source: AGHT+IHCBO7xLP5BokKxzK7/sqIK85VXUnkSNyV6W821hzOhPl8zMr4wD6F/COlyyLObPR50tBq6Ig==
X-Received: by 2002:a05:600c:3b03:b0:477:54cd:200f with SMTP id 5b1f17b1804b1-47754cd211emr18406055e9.9.1762247421039;
        Tue, 04 Nov 2025 01:10:21 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c2ff714sm200016665e9.8.2025.11.04.01.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 01:10:20 -0800 (PST)
Date: Tue, 4 Nov 2025 11:10:18 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <2cdrb57borduwntzkihdikdrmnytibbtw7eyh6xjmyqi3yppyf@iwafnggbrnzb>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
 <20251103-kaanapali-pcie-phy-v3-5-18b0f27c7e96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-5-18b0f27c7e96@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_011024_056556_B1CE7EDB 
X-CRM114-Status: UNSURE (   6.44  )
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

On 25-11-03 19:08:17, Qiang Yu wrote:
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

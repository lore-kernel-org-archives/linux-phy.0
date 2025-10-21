Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD19ECCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 14:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4vQq6sDvcMRHteIOR24Qbw3N/ZYJjl7VFd7XBd+xUs=; b=DhfDhvnKBUvgwV
	hjHJKWGvuIdRnC3FtkJyWuGwAaP/QQgomnmN6Vur1WBkGt3zW4jjvP5KPywJXkQMahIK1D0FM77AD
	Jflglh6oRm9ISn2An43jiawVhbm7nev7gqDo8d7xt7LrxLkvEJV+2E+JyjozRDZxD01JC7fO8v7cl
	IfY1nanTxZLpYy/ZmI8CPNLI+gndYIF3Mf6+lipdGia78gHxVYamLJ7/LLEWSdpMA8rzZyaAgSttC
	7hT1xH3j7ycdKysjwnNKBTFUPONxVPdNIN84iLjJAbeF0jfuLmetjzKkbsaqzBqZILgWMU/xBGIPH
	L/aKT0aKj1ZQjqpXyGrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDFP-0000000HIrr-1qcS;
	Tue, 21 Oct 2025 14:21:59 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDFN-0000000HIql-07lh
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 14:21:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4711b95226dso45263285e9.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 07:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761056515; x=1761661315; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P2UPlKlBMRgDPmUCzuIFXxKg63hxPHeMGbfNf2loeFc=;
        b=S0fN7cXPu3k3pv+Js7ZXSKpi/nPtaZx6hOqQsJZPYtEL8n5Y3mZz8KvjGtjyvkfyfK
         LuoTU17f1M3ybZPACyq3ee9WMpMx9mxS2o7Hgqly5bBrhRpiGPttkfTKT9ytsMk9UZ7R
         M5IQrXsjXb3fEgs9YvF8L5oTVBKpOTtAs/Lt3+AaLXZ47lcA7NbwvUqF/lFkvQzEbSyj
         7A5xUJu0xgmgmeIuPg6D77znKsR4yJ09lN+7J+7UDOEYWsrOjIlVIEt2jdTyNC/9yFAS
         gdmfqL0lfJf2DMZnM4RbIikeYE50K7UEcDhcgZ9xfoLBtbrbn6oRHuoT3bHTjWNyRIkt
         0ABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761056515; x=1761661315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2UPlKlBMRgDPmUCzuIFXxKg63hxPHeMGbfNf2loeFc=;
        b=sUPUsjCJebPGT8JHGgMfTtsU/UOhqUat7BzhuwsTSXdklQE5Rz9PxekAWOKEiQMABD
         JjMl7WotpBozs6mL4Y2I4HgDfYN7UKB77HWlTPVsq2ySgW2RwN3HELt5f9uAsPLjpUVs
         UyATd43MXzBZmJCFO46px2rd6X0LUTFLSax6O5agrID93oklo56KxPqpYti5hgLJUNBo
         uhiXlPKHC6NFbZ3Casm1OrRGGOoyHylhpvMv4JSOzxHKAOH0Q8DGmLYNsSb0A6+vXnmj
         zcStEduX4OcXHcMIuGyKT9SB3St1wGAm9YY8TZ7YeV1n5SpECJqJVwwYNMOG23kuJJsc
         cLsg==
X-Forwarded-Encrypted: i=1; AJvYcCVDbtQe67KAidlg0rVSW0m7lf7RuRfukQ65NgurJQvSdARyoQNT1j5LiaPU3LxKvXOJy72ShlaMqLY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOgMiBN0LleH7gDUxFeZBblucHe6SHr3OW/GRsDo/576JlhblS
	Tpa+g9iA+TM3MJMIYn8Q7/wQRu2EyWR7EBKfFQefnHeWNgT/1jPVX2eyOMTYuz5E2U4=
X-Gm-Gg: ASbGncug0k9ZSoFCPyZYjKplf8M3ucCY3xDtxZ3KEu5bm2AGYE24Pu/ytvKq57olOwj
	rqclSmKJysXYF8IWDltd82HQV+87RGAs12/GvnSI8pqzNyUNw7NgbewW0z6pGFDGvI2NghouWFz
	FSJ/JDmrE90omHL1nYrdYYaViSes0Qqnde5YsLmqEm5rmbDCWaxpSnZfwDIG+uKJlTGXCa8ECVG
	TiLwGlb0wzV8D8RmrFbE1fg6mv5/FTfEylxVyOqmn7xOccR34NS0RJG/R6fro7zATXwPIzlXp1Y
	djBQ2mg1eh88NcTJMZvym99J1VQ9RZbgGVqj468u+iToSV/1m3Ap7P4Oi89kubsqCisYHOuiRMH
	WKp+C6hcJdwAb7I7XFl4tBZRJ+1HY1Ynj2Vw6UDFscDrJSILBpJ730YbcRin3hjbmeEMyLD7k
X-Google-Smtp-Source: AGHT+IFgUwtFyMQzVFuUZ9DJK1ExlofFZ2ywTH/htMIthIxsBbbqiw9fs64De3rLyJVpj6OFqtdPYw==
X-Received: by 2002:a05:600c:621b:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-4711791fbbbmr133669265e9.33.1761056514836;
        Tue, 21 Oct 2025 07:21:54 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4714fb1b668sm229301885e9.0.2025.10.21.07.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 07:21:54 -0700 (PDT)
Date: Tue, 21 Oct 2025 17:21:51 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, 
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org, 
	casey.connolly@linaro.org, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 07/10] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <yyllvqn2i5mqyetf4c5c3k5xyrz2yfxwbkun22zhx6poumt7dn@k2pt6rcemfdf>
References: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
 <20251021083219.17382-8-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251021083219.17382-8-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_072157_072259_DE31C40C 
X-CRM114-Status: UNSURE (   9.82  )
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

On 25-10-21 10:32:16, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate an USB Repeater device, used to
> convert between eUSB2 and USB 2.0 signaling levels, reachable
> in a specific address range over SPMI.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for EUSB2
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

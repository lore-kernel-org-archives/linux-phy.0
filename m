Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9590BC47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfoRPAfD3sDQk+sOq+9wnISBaLvIMKwnOje5un3kzAk=; b=b63+M/oP2m2okx
	X+Giwnq9k+vNxg66UQzIoBEmd6uNnWBnOXuS6TIyMIzq43/19Mc0FKZZ+WiMUArjtjYvlqJrYJYLt
	HKd9ZleqnJJqdwz1L2uDn8s3/Ag8fZxsQYYEWlwwa4wqPQ4BiLrhSxRzUM0o/AdF4jMTAr3ZwAGc5
	tp7qb8Shx8PN/D3ErHG6ha5FJv5XKk5+iDKulbch7MN16493hZEsmVzQ9WmvPArLD1kBNY2OiQeH9
	7pTFTJR/c1QzcZmtGXtjRQaI9q3jVae62wYUbt2aUNlUbEw4Hn43E25w6CkD7skvaa6gq1qaqLJRE
	WJAdclDcXM6AfVagZFtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT9d2-00000002YQV-0q6e;
	Thu, 25 Jan 2024 23:59:28 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT9cs-00000002YLT-0boH
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:59:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50e4e3323a6so1402487e87.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706227155; x=1706831955; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0uvR4k90nJUoTmw5mM95zggQNT83JXcHe60niGgesQ=;
        b=FGqwb4b2BR2a87lmP3QeEDnsvg/N0lK6+5RQkj6PdDBS0PsjtQFQS7pFPetJfIqxmi
         18Fcqdov6XKVTCbR3LTjEif7vQPgiH5qxW9El6mjtSYABgA2OoT2QgIFsL46VyCkZoLQ
         XApCmVD8Sf2PFuNgPXftQIgAjhk+K4YdNUJFqmnTwAbcaOe+O96MzTJ9keIwSiLStzBN
         1UnwDBkcUNyc0tz9gXcQX6FA8CNoYx3ILgmQz2nGWb3rwTncvlGm1dSkTOXYdsIU6fXL
         +C283aMijH7KKQaOMImalyoXIAhxySZ7b2+weSLoI7/5+ZP+zQXBdPt5S2viwnP8boPv
         Z3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706227155; x=1706831955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0uvR4k90nJUoTmw5mM95zggQNT83JXcHe60niGgesQ=;
        b=D8bmi+dtTpXdVjLbSMHBSTolx4TN34RitxF1NWC/d9Xh5UQ2SeICLY6D8EFQHQWlTb
         8xyMYDRdTqYCebPv8Z3RQ9hMncN3tj9GTgY1SRWMqj1Wm26uxCcHdJCkenZ7enoNELCB
         Zn4oatvavPPmbIFBwB2dC5sIMwgLaVHZdgyktsGq31L+F4uQMuQ2P6EaMTU+ElVUFZdG
         etjEDCr57fFjIRM7y8hIjz5pWyCt8wIoZsKFhVN3fCB/pmlq/uMWfrsBx9pE2ufYvMBm
         9tHeXDaVeQCV4h4acxo28PHH3gLFLhKQ222FsCZJQ+lPvAuLUc5MiCJ6ijukCGznVY/j
         ncPg==
X-Gm-Message-State: AOJu0YzO5PEHVAuFpFcXYMvMIYP3M0ZEkEeEOufsR7YNjETOnbS/3d4k
	DZ12wLtQg0xwHYcDZMp6VNyRv1Q1Y+ugC5Kr4X9SYm5IwuXfDdNrfOg/EndZGGM=
X-Google-Smtp-Source: AGHT+IFoLvvnUhhkzp8ywNMvjAOePCPyBH1dUod36LEuK6Dj2PUXE10Q4WQcB8jYl5KON8cXhtcucg==
X-Received: by 2002:a05:6512:748:b0:510:1818:4f14 with SMTP id c8-20020a056512074800b0051018184f14mr28987lfs.30.1706227155449;
        Thu, 25 Jan 2024 15:59:15 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w20-20020ac24434000000b0050e64a0c62dsm12363lfl.240.2024.01.25.15.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 15:59:15 -0800 (PST)
Message-ID: <34726ca0-2612-4d03-b064-e5d3f2a83671@linaro.org>
Date: Fri, 26 Jan 2024 00:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] phy: qcom: qmp-usb-legacy: drop
 qmp_usb_legacy_iomap
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
 <20240126-phy-qmp-merge-common-v2-2-a463d0b57836@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-2-a463d0b57836@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_155918_315113_520D977A 
X-CRM114-Status: UNSURE (   5.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/26/24 00:22, Dmitry Baryshkov wrote:
> All PHYs supported by qmp-usb-legacy driver don't have issues with the
> PCS region. Replace qmp_usb_legacy_iomap() with devm_of_iomap().
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

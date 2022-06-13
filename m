Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47049C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 09:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPrJQANnJHHDRIOvaHZxtmgy7DCOkBTC80EBwDtR4Mw=; b=qs+YnIhmn48//i
	g/ssRiSZzjN2HPxvfJSFQK/g9uhU+Uw2erYZdRvK+0sytFQJSWwHUkxrR+jzEIY81ZnZ5WqaXyRVC
	KZQ1mzptbvWnzMxQpStnfhY68HMwC4aQ2MNBWdQdjGakaClHM3zzrlBUff2hCAAzVEme//9vNldH9
	hDSxFterQVJgsEb4ttCsAhX9OUvb1jj3USWWeMUXd1WqmY/e7hUVBGDOJvy01jS0Bav4rWd3qZuAC
	p6jvwj5NiUnqscgcqTWvK+6JDcie8VIBNhkT9wT09ZWVndclrDdV7awKiPqn1CeoJXJjOZND/unEb
	aERM4ayiR2WiCsmRp28A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gfC-002dNx-Js; Mon, 13 Jun 2022 09:47:14 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gf9-002dMG-OB
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 09:47:13 +0000
Received: by mail-wm1-x32a.google.com with SMTP id m125-20020a1ca383000000b0039c63fe5f64so2770815wme.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 02:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QBbQ5RlehgZnaAFrfhn8bcmuDJisLZ8n0VZI5+tVYd0=;
        b=Z3v0eSGeIIXyS+chr/DHZqDXVP9ghpBeOpyTPZnRzgvBMK2KTKcmPqiJQKdaYyAUFN
         /5I3VKtpsPS2LnAfqV4Wt5PnVqFDqh5lxiRB9AfwBzQFucpd0XxU++wTExjO1rPgcUJh
         hRDUoFoC0QnkrGyym9py85jy3rwrZS78VeOvzaiWNOVeoK0jOGfMUm9kRZ4gYAcJx1qO
         eWsCODyQWnmNHe5Nj00hoLKS0IdxF6kO8DPpvf65RTkwf/uBvbsNghF5OQ+XT0+KoA8l
         Q/Pwj0p60nA7MvqurDqt35ZXIfidOhub5Ukw59AbL3imUl8oD+xQ3l9yVVvUC4mC98ne
         DuHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QBbQ5RlehgZnaAFrfhn8bcmuDJisLZ8n0VZI5+tVYd0=;
        b=kvhdRescsk3mu0DkvwwVtizXyhkz3vj+qsgQ96OwS5z+Q1sR8SdRxW76iIjxZAfrw5
         r49v8Xps2pcWps5s0m8yhtjnHBWFn9RxDencR/605oyu+7DhT9V/GFmEeYCKzTDRXf4x
         E6kTJ/vXmzrLIHE8pBudpB55Mki2Tg+Z+gG/5qJH0mpaE4ewcewMRMOQLyWnUNJxvbv+
         7SumOmv3NH8aCs8w2mJkQJUrHDO03XJ8HzRDYasdbcmEGdLGbNz1BGl1CabjN6f4YDwm
         38O/OYzswqlboeoQsU1LzJPMMLJuXqz7VGZe4WKuvBT4xn3MITFQCr1NDDO0gBRS61m0
         JjJA==
X-Gm-Message-State: AOAM533fb3wokHrz2hVFb3lxxdHBrvgHvfMkWcW+0Cg4KjYWm5lEMIK/
	oaUki1FMhJ2vaL1TLnIzY1VZ+Q==
X-Google-Smtp-Source: ABdhPJy7gGaJAsLK4y+fIQ/Ft4Fmg9Bv62EVmuuU3nkUVCLfFTuDLBrT56zqaFARL7o+XzGT3C/n8Q==
X-Received: by 2002:a7b:ce98:0:b0:39c:4dc7:6707 with SMTP id q24-20020a7bce98000000b0039c4dc76707mr13988444wmj.51.1655113630472;
        Mon, 13 Jun 2022 02:47:10 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id 10-20020a05600c228a00b00397342bcfb7sm8762339wmf.46.2022.06.13.02.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:47:09 -0700 (PDT)
Message-ID: <71874de3-10f3-aad5-6f86-373f13bf4d90@linaro.org>
Date: Mon, 13 Jun 2022 11:47:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 3/6] phy: samsung-ufs: add support for FSD ufs phy
 driver
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, Bharat Uppal <bharat.uppal@samsung.com>
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
 <CGME20220610104350epcas5p2a42643432e60d7ba18f2a2afcffadfaf@epcas5p2.samsung.com>
 <20220610104119.66401-4-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220610104119.66401-4-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_024711_859565_71FDAE6F 
X-CRM114-Status: UNSURE (   6.45  )
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

On 10/06/2022 12:41, Alim Akhtar wrote:
> Adds support for Tesla Full Self-Driving (FSD) ufs phy driver.
> This SoC has different cdr lock status offset.
> 
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

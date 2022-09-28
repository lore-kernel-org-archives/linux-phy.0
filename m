Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45695C54EE9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rVf1KUS+lpn3mZI8mliWQz4iFSO4seEB9QEfu7c5Kk=; b=vZbR6jJk3gp2SW
	oB09KAtCS3/Q0ZPXxL8g/kFUqGDGzdbx+Tp+8GRKGYF8gM+gR12G7slIP5G2pX2Pa79kbmXFQC1eI
	K2kDT1CrsGPgivrb9bSSUDXzq0uuVdKiYtAl0YXLUGDH3KuMPMIFntUO5mEKrWO6R7DE5s+GRXWiu
	0jrAyFTWVyv4FmAFFjUNYJQ3cJ8FGGJ/xD1cSpkvEboVYEiA0EMBUI52rQhDhZsjJcek49KzcQZjt
	kq8aYpFVqOkXdGcXBhlDteZvxixPBeAsxWYx6mkk4iK/XjYqOt8zvsOfBMGiUb3KY+qVESKP2o417
	TtytEeCwfW7LcHbWjMVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZXt-00H41A-5x; Wed, 28 Sep 2022 16:04:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZXo-00H3ya-Sv
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 16:04:22 +0000
Received: by mail-wm1-x336.google.com with SMTP id e18so8819068wmq.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 09:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=jOsTRd2EGmvuWFFBgTAM5J+8IORBIqNu02CFYL1/QhU=;
        b=v0TvX6YVV2oxrMyqkgUbiWYvHKF0YPUGRkJ2bA542N393ROnUqUkeVXPXYcOXN9Q5d
         Ih2KClNyGxsOooOLpsoar0Hd/tAxCxh1emLvrBTQPy1OVpaxD4mCBRUjV0YwBL1H8qwj
         ER131Zs02oFhe5tvDScL7Bs9Cp4toZCmgccOEq0piqSotTr6/nhdUmD87E5cIoQI1h3T
         GB72yZh2hG0N2542jtepsDcJW0Myy/rfTjMQrImP0Kmk0+OlnPZarLk6sU5HJ3E2o+Zd
         9mXADR1H3D926VZm6mkN2MhvI2vdnmOigHjATsjTNqh0Kxr5M0EYIP8hbAp74SxvKKb6
         oPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=jOsTRd2EGmvuWFFBgTAM5J+8IORBIqNu02CFYL1/QhU=;
        b=u3PPDFh8yywcmZEmAhZeAFf04OEmwK+HoBTdBzsDIEH0VjRkG3bvZ1qBJBF8VTOlbb
         zJKuaR2nZBdNzhjEu9e8id8hG2O9nOhbjYZEbbyvLgue512JnSd4nZTncZPDcgluz6PK
         SG6grt5n4FzUXQ281QcFegs62Ya7NXrWNqJQqbCyF2LotWkHmb5gfAx+RmFlkO1uqgDh
         4Mw1Rc/FNBqiC40j+2u60qNJhofn9+f5Q3t/3p1y+AS1N1y6uazPErS0hdH0SrQMfgy1
         iiB6Hs6JKq+Q5KaFsAcyFy52aA7QJUXeW5dAStue0vpfPaEl8k0XvbUL2xz/7hJAxnZL
         5Jaw==
X-Gm-Message-State: ACrzQf3cZ+Qhl7UQ2WJiqyUhxumF7H8oMypt+dbN2MPCKCuCY9OW49El
	pEcRZPUlKB/Uok2YZb3Ocr+HfA==
X-Google-Smtp-Source: AMsMyM6XQU0NnnQU3dpJA72oWAbDU14QkBvfmbQ7fZQHWskZ5b1vNFSYwmdhtQKNW7UN/B9vZCq6hg==
X-Received: by 2002:a1c:f002:0:b0:3b4:dda4:b58f with SMTP id a2-20020a1cf002000000b003b4dda4b58fmr7245404wmb.184.1664381058249;
        Wed, 28 Sep 2022 09:04:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id n16-20020adffe10000000b0022b014fb0b7sm4443398wrr.110.2022.09.28.09.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 09:04:17 -0700 (PDT)
Message-ID: <05603546-79df-c27d-7c39-57d6e5789cd6@linaro.org>
Date: Wed, 28 Sep 2022 18:04:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/13] phy: qcom-qmp-combo: drop unused UFS reset
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-3-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220928152822.30687-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_090420_980446_F07BA334 
X-CRM114-Status: UNSURE (   7.91  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 17:28, Johan Hovold wrote:
> Drop the unused UFS reset code which isn't used since the QMP driver
> split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 9 ---------
>   1 file changed, 9 deletions(-)
> 

<snip>


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

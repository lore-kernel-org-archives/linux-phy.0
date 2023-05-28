Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D689DC7EE29
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txnO9dXK9nMF63Aw30hYa/LGMMfBO2/YosiVshDlkM4=; b=o8se1/i8qaAz87
	wj87L22Dj7Ay0RWf2ZSSLS0VNmZvrCvxxfNcUk4NzNChNXeFgucih1eN4iFPsbj/eLLqxpgxhDpbA
	GvDBjLnAuEcKwPKEgIG9N1ojcQiXNC6xvHfb/yKV3oqwshNMM9HBWt8Fm4lSEJDku4frvWTQgEzUo
	T1wyonMxrPez7HdlnDGLZHsQ3ooyHg04HhLDngR/UGKIP7btLbaelsxBuDOJncjrFMQ8NWeAsu9iS
	igQQ9fvhcPn4C2Ag+tQg8pwgeHn/iI4bkdG+pil9JBHsTNufDfesnVXc4Ad/B14Mr55Q3WRLqzU/U
	RYhecs2a/sf8NbtF980A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3GZg-007ieG-1M;
	Sun, 28 May 2023 13:36:44 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3GZd-007idm-1W;
	Sun, 28 May 2023 13:36:42 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-6260de7cfaeso9229236d6.2;
        Sun, 28 May 2023 06:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685281000; x=1687873000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2n/WoDLxYIs5byxeZJLkV/uF8fU1oTZ8WCiBG786KWU=;
        b=Ri6l7Zx7Zq5TyRhM1oOvRL6b6/CiRhjnyFwXpUFCKl9dN82foHPdn49IeTDonA+M4z
         9IyzYufFo5m2DJv3Xj6qB55Ixp6cH6iceqSFDts2NNo/GgqJT4SYB2LC1rzr03lezx2s
         C3U+sIIucSQKaxVIG8u2Y4K1xD3M1LJNfYeoW+pDSQ+koTLc+npw7WV7YY0AO+ck4r6s
         zyLg12MI9QNCwrtGnChOV6mHEh7KYrNa1CSQhF2Bo2W3zhtw5M3hRFz9LdPq4FZdzyny
         k/5RpJ8/gTqGr/S+c/nOolxJemNP6Vytr8OsUy6axFIBjSiOzMDM56HcwsoqwNTMIfX3
         4vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685281000; x=1687873000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2n/WoDLxYIs5byxeZJLkV/uF8fU1oTZ8WCiBG786KWU=;
        b=jrLq92hViG/rJtjdSZ5l/pIQPfFdrKnuzRWJcLfl4mBcLK0oWxi8bXPHsCooaVnZkA
         U+N6kX1JBDv/lLgqbInsAdw0RHC2c7WHPdqGLNZ/b9clfkXIlYbwqrTbnHDm+2lr1sTX
         X4gsHMOTeNtiey6GfHMnK82n/EyTHKwYWoBfo09QF/LJsijjidvhdNa6WWx7AJ9vURAv
         /7r1nnMKAm6PGP2G46NmhP9GPeIbk3a5uPOyqKR/pLPyl8uvXFIemPz5bdfhBDUyuX/9
         A0u0QAt6UzSteXXkv5XwKL94oHt+S01JG2oNfWQ1iz93BOqygd8QMV5f6BzPRNBc9+gJ
         zF9g==
X-Gm-Message-State: AC+VfDzsUVfNSAKYcLvWeGaV7r5ErEA+uFA2PWqveWfwF8NLAK8ryOjl
	4iLUXebXkTHlF/TPNcyeHMo=
X-Google-Smtp-Source: ACHHUZ6XUZe6ez6PJp2Vl27vedty0Ud/1hhdxDFc5ChSTJOKCw/jzUz5Qav5ZBXkf80FRvXpjxUbeA==
X-Received: by 2002:a05:6214:500c:b0:626:1589:68e4 with SMTP id jo12-20020a056214500c00b00626158968e4mr4422550qvb.43.1685280999942;
        Sun, 28 May 2023 06:36:39 -0700 (PDT)
Received: from ?IPV6:2600:4040:2007:9800:ffda:b634:1d9d:77a8? ([2600:4040:2007:9800:ffda:b634:1d9d:77a8])
        by smtp.gmail.com with ESMTPSA id k15-20020ad4450f000000b006260e7361ebsm1661935qvu.1.2023.05.28.06.36.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 May 2023 06:36:39 -0700 (PDT)
Message-ID: <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
Date: Sun, 28 May 2023 09:36:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
To: Conor Dooley <conor@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <20230528-decode-creasing-f5b3996163e5@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_063641_531140_4CDB8B84 
X-CRM114-Status: GOOD (  10.89  )
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

 > Where did the "att" come from in the compatible. Is this some carrier 
specific model of the phone?

This is the code name for the device. Since there are usually multiple 
variants of a device, using the code name differentiates between those 
variants. For example, if I left this as "samsung,express", it would be 
unclear if I am referring to the GT-I8730 (code name: expresslte) or the 
SGH-I437 model. This is typically done in postmarketOS: 
https://wiki.postmarketos.org/wiki/Devices and XDA developers. I believe 
it is a carrier specific model of the Samsung Galaxy Express.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

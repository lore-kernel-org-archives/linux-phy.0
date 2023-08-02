Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FDDEC41513
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 08:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1hord0eyrBu7RFLpPQdPHUBumi+Zyj9F2RSGkh0ZEK0=; b=MI/qmvU0I9Aj2FlUF0uVk6mlLd
	Ma5C37GPjs1CYvbE5ZWRO0OcqCF+tHl9PhnubGul718lHYbsizqAnoH38isZl7xrJd6sDNdWX0yWH
	mKv0a8hiVZKNNEIqjnPsYczdAu+brs9A0H3OtdABWDV783t9JRheG+1eilknKTnw5V1qhU1T3TsFn
	q6aA9uGMJFj9RzQJ1MezfDoBWX0aANIQT+mbRrIuML+ziM8ztR2fZvZ62XstVSKOSCi4f1dtVhcp1
	N08fwd3k9OevgXLjSlOJRseQcO/RRP92jAr2nAnceOseWqnIvgK3HyJE6s0vcULnnovEAPpUpKDOi
	ePnBbsCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6uh-004KcV-11;
	Wed, 02 Aug 2023 08:08:59 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6ue-004Kba-2h
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 08:08:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4fe3b86cec1so4546641e87.2
        for <linux-phy@lists.infradead.org>; Wed, 02 Aug 2023 01:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690963733; x=1691568533;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aOKmlxAZiu+rAy0mWvKiWQUS7YSnrxxOgJ2e0G73lbg=;
        b=tMzB48/4AsljrJvI2Ejp29/MrmRT3yKPeEX/DqlKCpOvI4twz4giC1NoKfgL72NFco
         lJufmZSDxWaWNjua3rF8eculMDKzzKA1Q/t7Lc02HGHVTNW7d+JZmfDm5LMt6mbzVLIH
         IjQ4WNxPR/FamtiRyJFqoZkzBYWgT/1I8Je5EUyg8pfGTTgGmCQ6q+N05lF2sRmuoKkf
         ggNDMLDtRdZQnnzrDIEeNv2eh7vx4LT40xMdo4z2V2zRmZmTFdFNUIQPtr7jp7bX7nOM
         6bndKwLX1CDNLsstFPiF+qs9/sUh2+sPn3CzJRUUTmdZgY24j2M83+Bo70GHRH2QksZJ
         BltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690963733; x=1691568533;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aOKmlxAZiu+rAy0mWvKiWQUS7YSnrxxOgJ2e0G73lbg=;
        b=XBNDP5/RHevwdzyNdbTJwluBiFI2tuZ1KTCp3E1dhk8Lhacgf5qOR9uHoGHgEDioCt
         WbTbphoBKd9vTJvMt3oJKz3fg2kgbpxxYxcHeeHE3jeHPVCuLToypa44bODYk1NXDeYC
         /05s/RZBmlHN1ipuRIzUZ9qgibyTEMQEijkhZMp0etAvJ2u5EvhEZ+nPpmHGAmSwYrZJ
         Vh8E06zJy0Jnp5PPPP/nmpjgtMpni1O5XSILkhjzci+PnB7/sSpY3loh286DlczZbNYh
         IQCAlpyrOsvHwiOHstagk7PCYubJr6eFdO0LAFIVQ3Cqqy8A2En1Y5K/HRSZrKLOQSFF
         87oA==
X-Gm-Message-State: ABy/qLZKEoVpfYo5w+DTr2//PcdwnsOrPwPTMcu1lrJeIpj+KFP9yPeZ
	XCE6gLLIRo8bWVxDVmQl/epqBg==
X-Google-Smtp-Source: APBJJlFG++b4mOehT6ZE3FkFUr1jz2i+ns16PIZMvzWbhnmLx8s6v/p8aB2VxEB9+qh6r9g8T5sPww==
X-Received: by 2002:a05:6512:104e:b0:4fd:fc36:68a2 with SMTP id c14-20020a056512104e00b004fdfc3668a2mr4674646lfb.1.1690963732826;
        Wed, 02 Aug 2023 01:08:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196? ([2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196])
        by smtp.gmail.com with ESMTPSA id p8-20020a7bcc88000000b003fbcdba1a52sm1006994wma.3.2023.08.02.01.08.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 01:08:52 -0700 (PDT)
Message-ID: <9caeb91f-1277-3645-cbbb-7be538d80e2a@linaro.org>
Date: Wed, 2 Aug 2023 10:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
 <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_010856_887104_4E027AE3 
X-CRM114-Status: UNSURE (   8.03  )
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

Hi Dmitry,

On 02/08/2023 03:18, Dmitry Baryshkov wrote:
> Define a helper for creating simple transparent bridges which serve the
> only purpose of linking devices into the bridge chain up to the last
> bridge representing the connector. This is especially useful for
> DP/USB-C bridge chains, which can span across several devices, but do
> not require any additional functionality from the intermediate bridges.

Can you CC me on the whole patchset ?

Thanks,
Neil


<snip>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

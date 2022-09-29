Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD30C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 11:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=prlIBJqzylq9m9gTWcHBcT9Z/nG5h/jFsQBr/CH8SqA=; b=wT7sdETxns/p6O4kPk0q733v28
	OAYrhOQ0eyxoUB1hJTsrZWyXdOBrp/+Dva3cO/bthC9knDipuYwdmyexTE84h8C16yyyfJAXxXEdO
	ZDVorY2qxanNJ/+xkH1grz+kcFFjLW9zDjY+JOFhw14D+OVoJlQIHhRf6eJ8118Rs+rfSmX6lqCfb
	bHk1u9eLaL3xY4vl5v5CSsn2KnvjwWGhQ8TTBoKvABpKaeL9M457jF+1s3kmDAbBUHPCynGcN+KcU
	c6RJYrITSfFR1nNouZfk/ZzGjGJUR2PkS3kZ7Pr1bVHRfIHX2g9DjmoZzAkD2YacQjeo4ngTj3aku
	lERpFlRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odrgn-002dIP-8Z; Thu, 29 Sep 2022 11:26:49 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odrgg-002dED-Ni
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 11:26:44 +0000
Received: by mail-lf1-x134.google.com with SMTP id z4so1783342lft.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 04:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=UBoM6eFYHcslu8YxYh8RvKSXX13nROuAtmi4LZbiE1Q=;
        b=Lu2Fw470+2WgGb7ZTEkacwDPuCiQrHnKcLk/4e2Hdg8bx2IV5ZRJhcjYnYoNIJUbNi
         zEJ9+V9c8VZpFBnP7h78WS1s/2uSQLImxpIO61kZ4XEGMGYri7lwA9DDz64VHAwZ0L57
         i84dRqKLoKiTS5TbNAQ0rDrvNu2/KSlH3mxsZBHLWArgau0uID7LBldtqoG1COxOGp3E
         bksxz6Iy5TLNtUhwJ7yT9QPH8wfQYSIQJ+PGt76zP0N/hZt2jmx5aUv8MrhECzBaUPVJ
         AxJ/EpeyQWeWXVBl710nJktlA+ltvm9FWRqUw3XZde4NRXwPmxxy419a+u7+zkV/mWyf
         zkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=UBoM6eFYHcslu8YxYh8RvKSXX13nROuAtmi4LZbiE1Q=;
        b=RgC/ibfojLzSv8Pohl4lTdoCSejIxb0rO+Ro4e4S2H1D8F355REOfYKPHK2AHdeF0p
         5IstoI6dudUthPU7v3RIOd0O18nU6i+d6jBc+nkKkn3qZDdQG6tHcj8NP46d7qKGQ9OI
         qwVdiHxDWoBxxPvniyc08Gt4Q8Z9PJlK74DDfGdS26WdxhBkVpQw4nXKijFtpE0pGMvs
         tb4gV5OOQdhXX1Pc248IkRGYyCZMZAD6tKKafUznfFY4uBvmNxqyFFP5Sp6ODpg4X3Wl
         VWGX1gzQ0GbacCzsaFUV2Ws5m+mBshLU6h2MIYtMhglGxTxxLxpzHh2hvDpSAn3hKhIZ
         gNEQ==
X-Gm-Message-State: ACrzQf0DtOuHv/18imjmVIgkIOzNuwx3nLqix6C99C6I17k/EyNdCeOD
	HQ1C5lM6yQyzIW8gLq+LFs9YmQ==
X-Google-Smtp-Source: AMsMyM69smAlLPqsotJW+fMsrTQEJmWY40QqusdkIObADMryk1d9Gppci5X7v7Ogl16gY3CAM3SFhQ==
X-Received: by 2002:ac2:57c9:0:b0:49c:3e64:de95 with SMTP id k9-20020ac257c9000000b0049c3e64de95mr1182043lfo.452.1664450798778;
        Thu, 29 Sep 2022 04:26:38 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512068c00b004a01ec20a4bsm757130lfe.117.2022.09.29.04.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 04:26:38 -0700 (PDT)
Message-ID: <75bb4a68-f47d-1de1-a900-789e365be41e@linaro.org>
Date: Thu, 29 Sep 2022 14:26:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-GB
To: Robert Marko <robimarko@gmail.com>, Baruch Siach <baruch@tkos.co.il>
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Johan Hovold <johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: ipq8074 USB PHY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_042642_861378_48C00A6A 
X-CRM114-Status: UNSURE (   6.80  )
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

Hi Robert, Baruch,

We have been looking onto the QMP PHY programming in the upstream 
kernels. I noticed that the ipq8074_usb3phy_cfg uses usb3phy_regs_layout 
for the regs layout, however the Qualcomm's kernel ([1]) defines offsets 
which correspond to qmp_v3_usb3phy_regs_layout. As you seem to be 
working with this platform, could you please doublecheck which of 
layouts is correct? Thank you.

[1] 
https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=NHSS.QSDK.9.0.2&id=894e56082ca89638c68b7cee039ac1b2a6cb4863#n1237

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

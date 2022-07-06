Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8756CC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3x9Ectwb741nFvwn8lvvRcD6imTNUlcAL9yy1fwsVM=; b=SHnNvZyt7cjBZ5
	k4iWsaJG/ck3i4yuiynuv7haHR9Wp5i1avuct9FfvS/BsbWfNmjOIMdp7QMqyGjcdosXO4REhGbdd
	IJd+80ORjEDMH9gcN/kwNvmWpfhJQqJRCll+SoWwPzWzXjSd3OfTvfUDFtI5MNX6kfNOMneBggpdM
	eE2cRMW1cvhPGD0rv+TWd0WU59b2ns4A4C6TKy46/9LrZS5xDdTVGDnKiTXrSsfK061ThTQrvbMZ6
	/jNv7u8MSb+XJv1KptvMiDOFPRfV7HvwtHddxBrhf1wXl1SmpW1/xcrmAGV4/cSnPlXjHkpmLAFH+
	HWcmCiVVmb8VuasEzCgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yxv-006s0v-QS; Wed, 06 Jul 2022 06:56:51 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yxk-006rsA-VO
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 06:56:43 +0000
Received: by mail-lj1-x22c.google.com with SMTP id r9so17245477ljp.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 23:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dZ0To80wgdekuL2hyZGIgermbtkhesmEIoMBMbQ82tQ=;
        b=Z/1jtAlZWICe5vn5+geZN3yVRVnVjMaw1TSPghZRYylwEC+OuLEB46PwXHYIKm48ph
         dFrQNoJCHgYBUQh4Dyk8fWDCRKQ8G+ezdJtrW7vUUrBnNxs2m7TqYYZWERilI3jfc8xX
         4gCr+EGrefFA9rIGZbbmgcuy84ycqDq0ZlRpA4meBWidGmUsz6bgi1S8S+w6VMoLw7O0
         fP+5QA9PffLp5LwbEIOueCAV7Kyr8ZLx6Y7Sgqx4BHpWSZMdhOm1+0nxo7wXfl/6AsOI
         idiJLhXhayY5vOThJpVQKlTPo4BMC+BmLFMWHws1GZKYAbXa9P1uEZ8cyzyuvs5sgJDU
         XG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dZ0To80wgdekuL2hyZGIgermbtkhesmEIoMBMbQ82tQ=;
        b=TxBSCnEF8IMiZzlOrX8kvrD3FunnNuBKHBesu/AlhquHuKsmynpMombvQSOO9auBq8
         qz9SNysCs9DETR49pIy4/VvgrZU7a1NtRarbUYjlCHoh/5pEnZNyeZPJHzUQwlkDeCUO
         1WTfAnOuzLSulsjJY0lFbIAOF3mhrIKfZg7ULa9SEc8tyJ1Pj2fqZ9R5g5KhXz30FSih
         AgomA12B54sY5RhaqnEC5kv1JZC84u/Dl0nBM5pF5ojHg0aSDgbExvUvFUIKqFB13pSl
         L0+BBBnTNPhr/sUViNxGxD6OPO9QNPUBHhwpKDvNixMO9RDC3QnBZzSQ7yYC8BbKM7MS
         24nQ==
X-Gm-Message-State: AJIora+GLxaWYyy9+9VnJdbshg7CYWUUNK4Qg0Z93Zm/XClZKrjSbhZc
	ESQGcbWNcUEzGivyuN7q4rmfSA==
X-Google-Smtp-Source: AGRyM1t+FtQEWMzZAGSJ6USAizbm35hIvCOAr/zIS1APEwOpW70KzXLCRRlgGceJMVRTLlwxkT535w==
X-Received: by 2002:a2e:2243:0:b0:25a:9dc3:fd81 with SMTP id i64-20020a2e2243000000b0025a9dc3fd81mr21433054lji.387.1657090598560;
        Tue, 05 Jul 2022 23:56:38 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y22-20020a05651c107600b0025d38eb7390sm643961ljm.43.2022.07.05.23.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 23:56:38 -0700 (PDT)
Message-ID: <da999ea7-dbd1-c4ac-132e-7e6720fa469a@linaro.org>
Date: Wed, 6 Jul 2022 08:56:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 3/3] ufs: ufs-exynos: change ufs phy control sequence
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20220706020255.151177-1-chanho61.park@samsung.com>
 <CGME20220706020541epcas2p1c74a1d1b5ca37ee4795bf9ec0da23fa9@epcas2p1.samsung.com>
 <20220706020255.151177-4-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706020255.151177-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_235641_044657_969A0054 
X-CRM114-Status: UNSURE (   8.97  )
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

On 06/07/2022 04:02, Chanho Park wrote:
> Since commit 1599069a62c6 ("phy: core: Warn when phy_power_on is called
> before phy_init"), below warning has been reported.
> 
> phy_power_on was called before phy_init
> 
> To address this, we need to remove phy_power_on from
> exynos_ufs_phy_init and move it after phy_init. phy_power_off and
> phy_exit are also necessary in exynos_ufs_remove.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

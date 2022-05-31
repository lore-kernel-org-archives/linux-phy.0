Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB19C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 03:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPNMsNKPB2df0ZBfE+NwqPCLcl6byxT8QqV1VU7B+k0=; b=2AfDXg7D4cQTgj
	sGsBsZwB7ZVyOlVj++KG01Jg3RmcOJPrp8lnpgErdMZBNDqRpkAqF2+R/GG1p6d2gFRDaIMYOZpqY
	vJOIxhHn7fZgGnZtawbTEsXgsSjqHFE6rW+6UHTop58EvK+V4I8GBJr5b0v9WpoKlXWQdUoUgWzFW
	Jw6TxyXKZvkLWAwMSrrv87ufo3MRwWuRiiUAUjDGS6gZrxCkCfTjLSqhwkwBBwY9edHeYoYguMU2f
	7Knk8HynaXw6DdUSeUBVx/nH8LOgNbAyixZHxirmUEKBasV377WPKWlLyclFM5dBv1YS6la8nBW8e
	z4O2NhZym2czKHP1lf+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvsns-0096u2-1T; Tue, 31 May 2022 03:44:20 +0000
Received: from mail-pf1-f180.google.com ([209.85.210.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvsng-0096qn-SF; Tue, 31 May 2022 03:44:10 +0000
Received: by mail-pf1-f180.google.com with SMTP id g205so946795pfb.11;
        Mon, 30 May 2022 20:44:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GAS4if3QmSgkBQk84oxb36i3hcj+BJ5KC+SnP5v10YI=;
        b=E3XT/vnplugDg6PKoS2fQwzKUvb4VG++v4JBkHkOL9PN8D25yU+bJcRxqWdYUrtqC+
         ouKG0/ndGWOZBDkJNGq1DzwCDSZzjq/izI0xn9S1Z4nWvWjXx1F18GsC4aYzhESBTynk
         Guju9eb61Zd09Jtks1PuDTERdtTWalkvRjYI/Hmd1EuXiL4b+0YEkEwI1pwRG4IHnsKQ
         85bONAGpBjIA3wRjngWDACZuO6T70HJslvo31bpLvj/zcRWzczhpD2YlQXd2vtUVp4uQ
         z9M+WwXMtTNQF6OguSOeJ9mcThk2UK6met9x8YQUJgJ7o9/LxY7L+PFAVpU8bkvnKmEQ
         AR2w==
X-Gm-Message-State: AOAM531sh8Y7uvDAeZQKpezdtkrbt6ouyaorMWhDNQTwgMNs9J/Sy/pg
	wf5KqZbKegD3E9qYF0NUrv4=
X-Google-Smtp-Source: ABdhPJy3R+SEKpYof3apU+H/Lqu9cLFpPv2T1M1iRnABqADktJfJvoRXA+aytj78uxglaVYgQTUAQQ==
X-Received: by 2002:a63:234d:0:b0:3fc:20f0:ec42 with SMTP id u13-20020a63234d000000b003fc20f0ec42mr6335327pgm.239.1653968645183;
        Mon, 30 May 2022 20:44:05 -0700 (PDT)
Received: from ?IPV6:2601:647:4000:d7:feaa:14ff:fe9d:6dbd? ([2601:647:4000:d7:feaa:14ff:fe9d:6dbd])
        by smtp.gmail.com with ESMTPSA id z6-20020a170903018600b0015e8d4eb25bsm10067380plg.165.2022.05.30.20.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 20:44:04 -0700 (PDT)
Message-ID: <8be31be0-8766-061c-2544-25e296048528@acm.org>
Date: Mon, 30 May 2022 20:44:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/6] dt-bindings: phy: Add FSD UFS PHY bindings
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012336epcas5p2fcafe14c90ad3e3a0901fccd62d15437@epcas5p2.samsung.com>
 <20220531012220.80563-2-alim.akhtar@samsung.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20220531012220.80563-2-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_204408_961401_AB94C274 
X-CRM114-Status: UNSURE (   7.31  )
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

On 5/30/22 18:22, Alim Akhtar wrote:
> Adds tesla,fsd-ufs-phy compatible for Tesla FSD SoC

What does FSD stand for? Please clarify this in the patch description.

Thanks,

Bart.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

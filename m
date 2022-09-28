Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC5E1C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JH6ZqC9j8LBkGPjrnlWE/zvLX/hqHUyid218DTfKN0U=; b=hSZHJh6BrIw9rH
	a3Hc0fVfkOsHXdENVD1A7Wc35gD94u5EkYjM0fTOSV8uDBIiAEh7JTxPAiNVefgeUD2RAPpOkt4MM
	GrSz/VSIlR01dFOH4+Yv8qqqFIVLX6y3Hp9L1FBxn2gn6b20WMjw7uPD4sazbUahI3Ayc715JyCvk
	cQzoY5ahA0FWc4qiqFVLv6WDZXWz+BsjE8Utx/FWimL5R+toeZllGFtKXZq44Stn+etSMx1J2VdNK
	gO51d+8XXbaxTIh5/bzrU02HxGoTMaY3kZXRGi5fk6A+9XsdEfhi07NyxGdrnpGtORowN3CGs+aLW
	vPbZxPmvaV+th82alx/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odamz-00HM9r-5N; Wed, 28 Sep 2022 17:24:05 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odamw-00HM6h-1m
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 17:24:03 +0000
Received: by mail-lj1-x22a.google.com with SMTP id b24so15071219ljk.6
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 10:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date;
        bh=MwZOOjSe5EvqawjxEnJ7FpDAPkEwDQh4cjtEeodqDpo=;
        b=ZzZ7DIVntT7aI1nDfftM+iWVT5R1Jw4M0n+AsVEFM9LxzmG638WQlH8T1wqhfT2Anl
         Wn3Rv6N743EPx4DAQY3XundnbjSvraW2HAe47+2XHDTp3DwxozCJIsZumiRpDVVBycJa
         hOA/V/EffgoKN/UbKrDG1kNuaqjuS0DSVNXxx4libAgLqP7bO/w4OvOq9lx13gZGJFYZ
         pvCUROJipwFBcyVCPuF6+mnTycLw9HN1Tf2kjdGXmlbQD7/mCD739R7NyunzYuuZWj00
         IUw3tnP7DJ6hQ3bOZY48aoOV1QbYNlC+mfA/WpIo93gay5ui0tvziG84RzG7tEPwhRTe
         vHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=MwZOOjSe5EvqawjxEnJ7FpDAPkEwDQh4cjtEeodqDpo=;
        b=bceKSs937A5ztsieeIzOVOCU3Gy9t2DMgeHuus/YPAPLLzAZDKob1/qlLoiK/FCcDB
         57AbkezRULfhkAYl6+v6zOhb9IMysRFy1SCvRZWsW4gDPNLgPP4fLspSoJgI0LZzdF/r
         gtIRt4UZytvgYqm08fbiCAWb6f4lsBctE3gz7vx0ugM5edtt/bgYxo0WcVU+LORhU8Wj
         nN6Du1FzhgbdnXhiGXZCzthHwQB0VTnXCG0D8EVu7CViYLctvy5EQCqlAkC0qojliQvS
         bwDcA5NpoMh37hSHrZrLyU9BMKUu6UEEB0uH9Nchb6x7NUo2CIpe9q336PECcn1679Zm
         SnoA==
X-Gm-Message-State: ACrzQf35QQoB67GMYQW8GWpCDzYg39PovSekQB7lkHSVc0TGMzUgofil
	w9xVbr1hflsrrRsdLg/O3z1obc6ObMrXqw==
X-Google-Smtp-Source: AMsMyM6VLlCeQHckt8SN5QNWyY/DXEQ6oobDBfMuKTAPAsCeQGpo2az/688Am9GDyV02N5Umat1Y6w==
X-Received: by 2002:a2e:22c6:0:b0:26d:94f3:1142 with SMTP id i189-20020a2e22c6000000b0026d94f31142mr6637214lji.101.1664385837246;
        Wed, 28 Sep 2022 10:23:57 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.4])
        by smtp.gmail.com with ESMTPSA id a17-20020a05651c031100b0026c5b16b87dsm495445ljp.5.2022.09.28.10.23.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:23:56 -0700 (PDT)
Date: Wed, 28 Sep 2022 20:23:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_03/13=5D_phy=3A_qcom-qmp-pcie?= =?US-ASCII?Q?=3A_drop_unused_common-block_registers?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20220928152822.30687-4-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org> <20220928152822.30687-4-johan+linaro@kernel.org>
Message-ID: <DF75CC1B-4455-470D-8A30-8CDE55F36537@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_102402_111537_E1D5C2A8 
X-CRM114-Status: UNSURE (   6.15  )
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



On 28 September 2022 18:28:12 GMT+03:00, Johan Hovold <johan+linaro@kernel.org> wrote:
>Drop the common-block register defines that are unused since the QMP
>driver split.

I'd mention that they were only used for msm8996 pcie phy. Nevertheless:

Reviewed-by: Dmitry Baryshkov<dmitry.baryshkov@linaro.org>

>
>Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ---------
> 1 file changed, 9 deletions(-)
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

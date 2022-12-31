Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BED7C3DA7D
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 21:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHsf5Gcy9IRtEvj+BikY5ihtp4+IdxxIlprY08leZs0=; b=He+a/TwoTk6jyh
	JBMiBFOQE2hz9owM46R52cvP6Tpj7Zpj6OsF97NJcHVAc7owe/bv56AWOHdIKGPYNkNOPBYM6/RLV
	qKCWN3ItA54Fkx+MW8iDamLKMpA0mMS2hyBmX/aycEpwRthnC7j8dgYXqquLQdruY1D3HdnFEECHy
	vmucNrr2Ckg/QEomMHVZrTWe5SnmzF2DqyFDSMvzHOyW9rrZpk2ud+7K3P9Xl5JbzR/HVpcpjJmc7
	SYYxYeJ5zhYkTp/nsOcAvi34pYLGvS6N1DTlrfCL00mfar1Kg1+BOZrIYcODVMatEEsgs4W/x/04h
	fjq3lzijf7E8OQjEOH4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBjPu-00AXsG-EX; Sat, 31 Dec 2022 21:29:22 +0000
Received: from mail-pj1-f52.google.com ([209.85.216.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBjPs-00AXqi-1b
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 21:29:21 +0000
Received: by mail-pj1-f52.google.com with SMTP id h7-20020a17090aa88700b00225f3e4c992so16398350pjq.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Dec 2022 13:29:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISWRdwVih23bgfgAaCXa5whpIWz2PcBW3G4foSLvUag=;
        b=ePxdz6wsx5lQyFd3vAaJn9gXmt/vCbyETt4kqmckPm7KNHMLibyEmrUyqqaaaaMfUN
         0OTovS4b68B6NSGqaza07B26IASm1+tEP1eofYZO946a2gIGNpq4PUw0tCbxUpZQKqSQ
         PYNV0pGtOHF0nwqc2/rzML8PQyYsMphbr+oep0impWdEGhMf2DzJzSCT2Zq62klNep2t
         byHNI97ggWVaJspDECKjLu5e29VbYsbNSO7xnY/iWfvly1JI+A98+vsbV4lG1c5FiF09
         P+ARsWgNbLJR2sV5XrPuuFfvqOdXoYPlDCXkZn+NbUv0ZrM9oBqBTDEVJsMv4Ny6agkr
         P7HA==
X-Gm-Message-State: AFqh2koNW5CcJrENFoiHcXdoazzP57YIm4DLCX9f5e/SnkoHjZQtKoTD
	/gYYQjaqIy+fpXijpe3LN7w=
X-Google-Smtp-Source: AMrXdXvraG9d4tzLLt+SMadNLdkPrk9+LoAN6PepE438N39jPpTDruR0LSLMxxgooeS/zwR/m27KRg==
X-Received: by 2002:a17:902:e1d4:b0:192:8b2f:38e4 with SMTP id t20-20020a170902e1d400b001928b2f38e4mr15036127pla.66.1672522159036;
        Sat, 31 Dec 2022 13:29:19 -0800 (PST)
Received: from [192.168.51.14] ([98.51.102.78])
        by smtp.gmail.com with ESMTPSA id i14-20020a170902cf0e00b00186a2444a43sm17212453plg.27.2022.12.31.13.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Dec 2022 13:29:18 -0800 (PST)
Message-ID: <a0133561-2fd5-b962-2561-454aab7e97bb@acm.org>
Date: Sat, 31 Dec 2022 13:29:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v5 19/23] scsi: ufs: core: Add support for reinitializing
 the UFS device
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
Cc: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 dmitry.baryshkov@linaro.org, ahalaney@redhat.com, abel.vesa@linaro.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <20221222141001.54849-20-manivannan.sadhasivam@linaro.org>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20221222141001.54849-20-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_132920_132383_D5180912 
X-CRM114-Status: UNSURE (   8.47  )
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

On 12/22/22 06:09, Manivannan Sadhasivam wrote:
> Some platforms like Qcom, requires the UFS device to be reinitialized
> after switching to maximum gear speed. So add support for that in UFS
> core by introducing a new quirk (UFSHCD_CAP_REINIT_AFTER_MAX_GEAR_SWITCH)
> and doing the reinitialization, if the quirk is enabled by the controller
> driver.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 833E6C4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bW6ouKhXiTmTXbR/ZY8Gtk/hTFI9EwwPVF8cctWU9Q=; b=Sdul28Sk65v+kP
	rLCP1YPzFFINDeKM7t+/4b4h1ZYG8N6twdtTGJokKmURSYvMN8iF7LTHd3gCrdcvtPLweCyNSX+2W
	Fmf1ch0JK0A80B6luLiI2P+3+M4NmTH+ifI8t10jX4CAB2+uWFuWZezjEtKFVGg0nmU+2OyPp/+jU
	U8RhSMpHOoHRahP+WcJzCFU2CryxqhgRoJHbz3+6YRAY+f21BF8qph4dpyvEAgwD9NrhgT4Vbf1sV
	nyAroc6FXp6pvSryqaPshibUD/zWstAVrPB443gqcsc/HtuR5dDsQKdLjNe1NuuxjbRTxKcgmTt/h
	9GxkVz5pnI3JNfdAG6TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nxA-009RnW-Kz; Thu, 01 Dec 2022 18:06:32 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nwj-009RTC-3F
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 18:06:09 +0000
Received: by mail-pl1-f177.google.com with SMTP id a9so2374589pld.7
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 10:06:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVK+6Kq4nzKMUbH9qhCB7m0XxdurCZ5fwk7wImCZNKU=;
        b=gQNFmW9mSa3GH1VaYRM0Mae7OIZPE62rJkRx3CxV5KZLwn8aejRcS9HdFXqeyuTLRx
         hx7aRLN2Sa8ewVfe5YuV9JatReq0GZNh5dyRTPOtFi/3Blha5h6BdtNDVw7JqhfL/FI6
         p+Rxeqjeg2vd8nXDaPJlf+9eX8VdLY9lAuDF7+OfMHxlzabUl0zV74bp80w0xhsPzeDg
         qcjc0z9S3RKsk4cdorcHeWqZQFO6k8KEYLCKlG4XH+O8zxuysA2wgJ4/agEzJGwNotxt
         kaW7dD91/IzWLXIcwF/zDonIxQ+adO8fSZnu/UiBTEIl6u76u7MCxtdB0xpM+f01XLec
         n2Ew==
X-Gm-Message-State: ANoB5pkZdMaMYs+ukDPtJMDNdXcbChF4/u9dTJgj31STMy0DYoGeZKPk
	3MS6oUu5n3zDCZLr84PMXcQ=
X-Google-Smtp-Source: AA0mqf5yON6iTF21v9ToNldiRX4UMXdkbeYNlxYzwMUD2LUs0hxwgAPvPXpnhTc9b58+xORLL06YFQ==
X-Received: by 2002:a17:902:f68a:b0:176:71be:cc64 with SMTP id l10-20020a170902f68a00b0017671becc64mr50293287plg.141.1669917961631;
        Thu, 01 Dec 2022 10:06:01 -0800 (PST)
Received: from ?IPV6:2620:15c:211:201:e25f:2653:dbae:e657? ([2620:15c:211:201:e25f:2653:dbae:e657])
        by smtp.gmail.com with ESMTPSA id y7-20020a17090a2b4700b0021806f631ccsm3292919pjc.30.2022.12.01.10.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 10:05:59 -0800 (PST)
Message-ID: <fa0e6167-a893-4eb7-efff-8f378ee819e1@acm.org>
Date: Thu, 1 Dec 2022 10:05:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v4 18/23] scsi: ufs: core: Add reinit_notify() callback
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
Cc: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 dmitry.baryshkov@linaro.org, ahalaney@redhat.com, abel.vesa@linaro.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-19-manivannan.sadhasivam@linaro.org>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20221201174328.870152-19-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_100605_215232_41A95B57 
X-CRM114-Status: GOOD (  11.04  )
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

On 12/1/22 09:43, Manivannan Sadhasivam wrote:
> reinit_notify() callback can be used by the UFS controllers to perform
> changes required for UFS core reinit.

What does "UFS core" refer to in this context? Should "UFS core" perhaps 
be changed into "UFS controller phy"?

> diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
> index 5cf81dff60aa..af8c95077d96 100644
> --- a/include/ufs/ufshcd.h
> +++ b/include/ufs/ufshcd.h
> @@ -297,6 +297,7 @@ struct ufs_pwr_mode_info {
>    * @config_scaling_param: called to configure clock scaling parameters
>    * @program_key: program or evict an inline encryption key
>    * @event_notify: called to notify important events
> + * @reinit_notify: called to notify UFS core reinit

Please make this comment more clear. Nobody knows what "UFS core" means.

Thanks,

Bart.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

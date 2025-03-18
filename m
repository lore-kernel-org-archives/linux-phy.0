Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EACC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 17:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGKqnyiW+o+TTU5uBcBUs3WX2pfM3sZj6KaSuSVXfoM=; b=q5s0KhMLGQhnya
	S+pFjbRon58v3dY5Jdgk6BejSG2A7dKrPQkEmuVS1cIS5uu/oz3AAxKb90sc6IVdaRCuRpG/TUG02
	0958zLZo6Sr7ZdIGg6kHQysbxc1+GULJB/PAF7YdA6/cnwk05s4MH6gUQDtClhAqNHiugj+G9aEcE
	AhPl0l4W8TVeKwrugK3Q/l0vRj0PMoR9gwr5GIzR5eSLiDrtfWKL5tTgST94UlejuONhhW0SwYQvu
	3OAZr7DNyq6nX6D7pigpSlLC319mNuA/vJ8A62ls6Hdg64WbuvJlphes8ZE77tKX3a5lSOKyQHjDh
	WxNjVoKNvQwVV+C8VJTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tub3R-00000006jBK-01Gd;
	Tue, 18 Mar 2025 17:48:41 +0000
Received: from 004.mia.mailroute.net ([199.89.3.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tub1b-00000006imo-2i3X
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 17:46:48 +0000
Received: from localhost (localhost [127.0.0.1])
	by 004.mia.mailroute.net (Postfix) with ESMTP id 4ZHK5x5JfQzm1Hbd;
	Tue, 18 Mar 2025 17:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1742320003; x=1744912004; bh=IfsXZoAxPbyHlHWYzXvSpS4j
	nPi0L2iXINNY123rmho=; b=yEa4G9e8L/okwvGV6oZf0OTrnJAV8E2D71CDSwjz
	9lRjH4aYHZiicR+R0heDD2RY2xqDtcgo1gWCx25vMe+5Y+ApwugqkfNkntNf8sU0
	e5RrFAWI+ZoyubJbV5J+HtzaS5h1jZruQS+fkue1VHhnff1dwkTsgXK9UkHyzjGF
	jxdqb+9mPy/fT5fyL4Apk5ALpmHjfF3bth3kC38nC9GJcpwC96+FI8/Afqq9+EWm
	KC9ZkFrNJyFXYs+Vi8X5Em2x3lQj5oPgBt9PPXpR+FT0Y0lu7mQ0lJlXljtDbaoE
	STObvvpjE9vxjt8lV6FnC/soNNW5EvlPFmhu8rnJY2H+Mw==
X-Virus-Scanned: by MailRoute
Received: from 004.mia.mailroute.net ([127.0.0.1])
 by localhost (004.mia [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id ekEOqjzEKUDY; Tue, 18 Mar 2025 17:46:43 +0000 (UTC)
Received: from [100.66.154.22] (unknown [104.135.204.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 004.mia.mailroute.net (Postfix) with ESMTPSA id 4ZHK5k6bHpzm1HcC;
	Tue, 18 Mar 2025 17:46:33 +0000 (UTC)
Message-ID: <adb6f7cb-36b1-47d8-8fa1-00fcf5242699@acm.org>
Date: Tue, 18 Mar 2025 10:46:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 6/6] scsi: ufs: host : Introduce phy_power_on/off
 wrapper function
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Can Guo <quic_cang@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-7-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20250318144944.19749-7-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_104647_813778_63CC6F18 
X-CRM114-Status: GOOD (  12.47  )
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

On 3/18/25 7:49 AM, Nitin Rawat wrote:

Just like the other patches in this series, the subject of this patch
should have the prefix "scsi: ufs: qcom:" instead of "scsi: ufs: host:"

> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index d0e6ec9128e7..3db29fbcd40b 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -252,6 +252,10 @@ struct ufs_qcom_host {
>   	u32 phy_gear;
> 
>   	bool esi_enabled;
> +	/* flag to check if phy is powered on */
> +	bool is_phy_pwr_on;
> +	/* Protect the usage of is_phy_pwr_on against racing */
> +	struct mutex phy_mutex;
>   };

Please reorder the above two structure members. Synchronization objects
should occur before the data members protected by these synchronization
objects in structure definitions.

It seems to me that phy_mutex not only serializes is_phy_pwr_on accesses
but that it also serializes phy_power_on() / phy_power_off() calls. If
this is the case, please mention this.

Thanks,

Bart.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

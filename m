Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B9DC47089
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 19:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GCS5kfFNqUjfmbVVwp1VQ3T7YQ8j3BfzF07dDnJuEwA=; b=JF3tUVVk6//ikBZE0eXAiPtS50
	nl/8jZ/M2R/7kIx5lLRLH0dtCTdIHi1tAxr9Mxk0E2Ys/Y7XhdHrgMZkW5oE+shSOSgvvuerOyFbH
	2oO528BGQnzEri+YuywE2OMeU+tMtXb8WIUaQ6H9GdMLCuEmS0DIWB89RcPVT7GzuQmODd7zNk9+u
	CK8ODeqj2FErPJigMukhoZbq4wXxOoMrCXlyg9W9JubI9wo3lpFEMrzOOIIAO6DHXAH7HzrXhwn0f
	Harn+rIuWAss7cM97EHucon7gk9K1KtxyC/qHj0yYFBx/TSvbjxHoupB5IBEFdDFCHVoAl8xdgkvr
	OpRHxc7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Hd2-009onB-1z; Mon, 05 Dec 2022 19:59:52 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Hcz-009ofi-9u
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 19:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1670270389; x=1701806389;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IJWNp4qP9S37kkrGBvbHjVZEUGTuxm3+Wx+bTfe/e9g=;
  b=GvifMtiO4jzgjgJGDV5YkGC1TPri/8zvQlAT3EM4kKmDAPcCBZRDwz6L
   uBRLk8nn+WA+/NXieMdFeZ5eVkP9egvQ59U7/IWjmVl6PqgC9C8C5YQvS
   2cyP1KCiKtWKRyk2uQTQDFG81XNVdqYKocw7H/9bU57rANB/MacJY5i9u
   I=;
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 05 Dec 2022 11:59:45 -0800
X-QCInternal: smtphost
Received: from unknown (HELO nasanex01a.na.qualcomm.com) ([10.52.223.231])
  by ironmsg-SD-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2022 11:59:44 -0800
Received: from asutoshd-linux1.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Mon, 5 Dec 2022 11:59:42 -0800
Date: Mon, 5 Dec 2022 11:59:42 -0800
From: Asutosh Das <quic_asutoshd@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <martin.petersen@oracle.com>, <jejb@linux.ibm.com>,
	<andersson@kernel.org>, <vkoul@kernel.org>, <quic_cang@quicinc.com>,
	<linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
	<dmitry.baryshkov@linaro.org>, <ahalaney@redhat.com>, <abel.vesa@linaro.org>,
	<alim.akhtar@samsung.com>, <avri.altman@wdc.com>, <bvanassche@acm.org>
Subject: Re: [PATCH v4 17/23] scsi: ufs: ufs-qcom: Fix the Qcom register name
 for offset 0xD0
Message-ID: <20221205195942.GF15334@asutoshd-linux1.qualcomm.com>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-18-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221201174328.870152-18-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_115949_391178_3BAA0A5D 
X-CRM114-Status: UNSURE (   8.24  )
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

On Thu, Dec 01 2022 at 09:45 -0800, Manivannan Sadhasivam wrote:
>On newer UFS revisions, the register at offset 0xD0 is called,
>REG_UFS_PARAM0. Since the existing register, RETRY_TIMER_REG is not used
>anywhere, it is safe to use the new name.
>
>Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/ufs/host/ufs-qcom.h | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>


>diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
>index 9d96ac71b27f..7fe928b82753 100644
>--- a/drivers/ufs/host/ufs-qcom.h
>+++ b/drivers/ufs/host/ufs-qcom.h
>@@ -33,7 +33,8 @@ enum {
> 	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
> 	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
> 	REG_UFS_PA_ERR_CODE                 = 0xCC,
>-	REG_UFS_RETRY_TIMER_REG             = 0xD0,
>+	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
>+	REG_UFS_PARAM0                      = 0xD0,
> 	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
> 	REG_UFS_CFG1                        = 0xDC,
> 	REG_UFS_CFG2                        = 0xE0,
>-- 
>2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

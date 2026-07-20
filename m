Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17905C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 03:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPbOgCkrx03hKJbxNPZ3ZGvus4jvbvIvqK4k/F0KRA4=; b=BI8kd3SRhnVVQR
	+MrwVfakhkanJ6atCIOGJ+s4yeSVtqDInJ8iwgeXdrHusA12Go15KEZffoEbFg1X8BANcPJcuX5UP
	gvlgrZKzit147CHoZHlWQjx4tQVSjDYZeXlaUKZ29G4PojQS9oF5/Fu4BBYBKGdpWdl4d071hZlOS
	E8xY93X2DqJ9qpYrHepmDG+NhA8BCoOmARgHbD4ZV5q9Nz4geCNzAie92vmDAGFB3ZSH4j45030kX
	v7Idj/NXOSIZ/uS+Gu1F4nC5OboEAcC04o8X+OPC5XxCtH8Au2c6+GP3lF+HjYCYbJl2Npi/C6Lew
	qxsL5D4xH/ZnS25ww7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wleoK-00000005muX-2h9D;
	Mon, 20 Jul 2026 03:36:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wleoI-00000005mu7-2H1E
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 03:36:55 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66JNsbe6912361
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qEKVOtSGu6v1Xnn1gJvWyAkY
	8TDzed0RUUEE6gih+W0=; b=pzGwnh47vzDCNMF0WVXWhtl3v1FY9qJz7aRZOwLe
	mRzUQrFyXT9h87KVeq8LJSptvtIVGht5FXBlQx6YcDZZ7NteUmLRCateN7OzWy52
	jGUuZZmZGMPldFLMZQMITROZFSq5KreiTOeoHxWVh1PWlOqOCeYwTra+LukFLIhL
	h/mdnx4oX+DiuG3h1kzSuh1zvpSKJR+CJtkm8UC2AZCrW86Rq6dBzaXwIyjHcVGX
	UGB/wzfeMzImAaCRyKVHTcZX7AbYup8cZm11YuGp4mLAvT0GMarfJHJ3Y9fwQlRS
	vnE3L4kNnlNgP8YLotY7FGt5oIgfJ7Bh+lFpTjcwyq4feg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2af45u9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:36:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38ce7fabf76so13866538a91.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 20:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784518612; x=1785123412; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qEKVOtSGu6v1Xnn1gJvWyAkY8TDzed0RUUEE6gih+W0=;
        b=SmSbzjmraj2zabysp2LP/VTsnBBn/liwE3XQdkz67QwY41nFyzUuRbbB5mleLzsp2D
         4E2b02mv7r979fF5KjIzYGhj+HIHspmZy9TjMN1jwuzbFG8/3+5603ffFU0KLZL4aZzx
         3WX05u8ajYsEUzDjz2wKOwLYwC6Nr5hLA20Znr/DIe6gqwAn8SpFCk3JGVRPvJ9NmaOa
         wDAt+aEAjcSoGPU70OXi3mHJ86dOLh9f69etM0jzMbkkkDggN+ny9kbHTzrF9Z4+wrZ7
         P67WrPQoR0P6BZxHr/h06kts/kHZ2msWNLnU5Xe8ZC0RzW4IMjNPUI7qAG406qBSzCWV
         /NIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784518612; x=1785123412;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qEKVOtSGu6v1Xnn1gJvWyAkY8TDzed0RUUEE6gih+W0=;
        b=iA4OBU/J5KCl5K5yPXsw1acPU4HE4g7HV1NXMbTOmH/KKLNCs5jMTEQRLrMvwLwPMb
         i1fTF7mEuKkMaWKr92DMYpeucqWEsdRXweGu5a6gdMSlcK7ciMiHdJ9l4isRhDdgCke+
         VzfxNEC30782RYOxteTitjbGCyz77fDnMLHk/evmSvQUsjnfbakGyc71zYAYFNS7v60s
         kPU36Cj5EeoaiMZQfgtTnTDH+nQUopwbcqBuMt5LAP2zQ/TrMSZYB6tTYWKCFQJVc2O9
         8BrU6H9dBQb5nAUTq7YdCQoG9W8/vME0ZsUUb+k/+pO5986Vjf74+kjpAJL6eTxPG52p
         JsoQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp7+qVu15VdzwhH/6LXtHystFXk4/nm5o1fFVzNaqtR79AwJ+qr2sDVKIdYH9hjcyf6zS7DsqyKTXU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDZdZBOvxehkw+xCdsXieBuG6D0cvnpUeNJ4aOza96UISr2PNP
	P/RJslFDx3PwH2/cH2FYM9UDSrcG2aFgS3cQecbAOhJduR36EfRGHJMf8VksZdL0/CX0s0SXTff
	hjqegpPmUWaye6MJIG6JKPxPs3eMsTY4fZHrDbEU/k+h3dHZ29IJiV7wfPWaMN4KBZf9g
X-Gm-Gg: AfdE7cnE/MxAuAiKkMwhRKLQIu3X3pSAkcIZkEwFs1Pss8jIib51JGUtbW3LOUAZ5WV
	+V0CtMYNjt0fKebv3OkiMKW2SpOGi8JMjnas7pO5cXtmyZ1jbCGazH4jZwq4sZRK8PdmIv7cNzf
	C2CWfXodGvt914VSFiJ9MGH1oEm5iJwOCdP111Lglf0rW4MYmBq0+ZnxXUGZvtFoYSyS10tJRXC
	AhdoaNSR0t0kCGWHB6PjyJu/gJkZs51jmRNz+8XwHmSBJUf+PcVB8n8IpQJ81Dtm4T30UGgDpgM
	348mBlOCDxjI/gs4KBTkgSD5xhkKVU8cM5yuAprNor91T6nG6yNuqQEJkwS30X6Y/XYr00HmsNQ
	7f+SjsIwWzAN4v8VbnKgBszqrMJp81QYYg7ydsvKdeud7Ego=
X-Received: by 2002:a17:90b:4a08:b0:380:9157:d6c with SMTP id 98e67ed59e1d1-38e4b41043cmr13718747a91.10.1784518612425;
        Sun, 19 Jul 2026 20:36:52 -0700 (PDT)
X-Received: by 2002:a17:90b:4a08:b0:380:9157:d6c with SMTP id 98e67ed59e1d1-38e4b41043cmr13718723a91.10.1784518611968;
        Sun, 19 Jul 2026 20:36:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13ce29c2a48sm22658546c88.2.2026.07.19.20.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 20:36:51 -0700 (PDT)
Date: Sun, 19 Jul 2026 20:36:49 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
Message-ID: <al2X0Yx4GeRgA6mS@hu-qianyu-lv.qualcomm.com>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-2-4f9e87a61463@oss.qualcomm.com>
 <alqrbpi3EbvV9RnC@baldur>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alqrbpi3EbvV9RnC@baldur>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDAzNiBTYWx0ZWRfX8OgKoV5UpkcU
 SBGziyV/QLxvPmx5+j5dfsWkh0WIQBsbeKNvnGueF+edJWkoFG9mX7sBif7LnczTovRqaP/ePuD
 WGlPXHSvrrw/AKvFvv77wgL1X5pCxEM=
X-Proofpoint-GUID: kMinjVnzAZqHGYsUgQJpXfjr5K3ea8fm
X-Proofpoint-ORIG-GUID: kMinjVnzAZqHGYsUgQJpXfjr5K3ea8fm
X-Authority-Analysis: v=2.4 cv=a+sAM0SF c=1 sm=1 tr=0 ts=6a5d97d5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Y4lf73eBQ-sTD4myGQcA:9 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDAzNiBTYWx0ZWRfX1kqUVtVUoWbS
 eGwUJ/j8RbViiTNrdjHIUdOquKiBAfv3JW+LfVj7CEbs+ln/nMdw5aNnQ6H17JtYywk4tZ3Xa5b
 6Iplhqsivgbd1j0Y6R2mUQrihGmadYk8K26VZD4IkyVw+NR4bYN7UK29/yD5aDNopjTEMe55vb4
 Ji9dJWHLRAB6L6Bpj3XVF6kjoQA9sOY1qvzpTxbSTnaNtXd8/lTYYNKllO496W4FL5byJeIfj3A
 L4R+sM0tDa/yEJzeGUFXOB7KU53yi5RkIDw4fKnwUq6s7gxHXifxynBm89c+MWOzrhG4PmrfBVd
 4UHTKrkZD1XyjgsNSbIv4awEAdEHvofoR2AapHl6ZVFBI6OnQJ47bkKfMTXX+7FJNu/VBvCxb/u
 SGU/5ljbRNcorA/qpLWlrlFy9Qm2ftjwYwkFtUUvjSCOjzA0I0Q0852Dg1zAUzW1VoEUbAdykVr
 c+XfnEEPJFlWGzLQE/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-19_08,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_203654_700077_C1FFBB2B 
X-CRM114-Status: GOOD (  22.46  )
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

On Fri, Jul 17, 2026 at 05:45:45PM -0500, Bjorn Andersson wrote:
> On Fri, Jul 17, 2026 at 02:58:34AM -0700, Qiang Yu wrote:
> [..]
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> > new file mode 100644
> > index 000000000000..b79edf2b7d5f
> > --- /dev/null
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> > @@ -0,0 +1,770 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) 2026, Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> No, there should not be a year in there.

Ack, will drop the year:

Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

> 
> > + */
> > +
> [..]
> > +static int qmp_pcie_pd_power_on(struct qmp_pcie *qmp)
> > +{
> > +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > +	int i, ret;
> > +
> > +	for (i = 0; i < cfg->num_pds; i++) {
> > +		ret = pm_runtime_get_sync(qmp->pd_devs[i]);
> 
> In the error path you will put pd_devs[0..i-1], but
> pm_runtime_get_sync() requires that you put pd_devs[i] as well.
> 
> Please use pm_runtime_resume_and_get() instead.

Okay, will switch to pm_runtime_resume_and_get() to avoid this imbalance.

- Qiang Yu
> 
> > +		if (ret < 0) {
> > +			dev_err(qmp->dev, "failed to power on %s domain\n",
> > +				cfg->pd_names[i]);
> > +			goto err_power_off;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +
> > +err_power_off:
> > +	while (--i >= 0)
> > +		pm_runtime_put(qmp->pd_devs[i]);
> > +
> > +	return ret;
> > +}
> 
> Regards,
> Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

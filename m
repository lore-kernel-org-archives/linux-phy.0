Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A2FCA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 07:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAHi+CXpzuvhNnx/g/O54Ij7drnkhD9ql01bLvN4eYQ=; b=3ZroW6Lth/PBqT
	zqMhySRjYwyrIbbtzmXP51Melj/Ynq81AQtHbhyxEVohjHe/FPFyFeJGq3olGLnzusytdfKp36CQM
	GyYq0R64Wu6PWQDwHoacW8wVcRUZuw0F1vSQ7vufq5vleFqVzH/F+OgJaui19AxqKUmCFmXoa4d2q
	WxcDqu7sMKUA7yyWDjEPI1y8F8P9nlPrrm/t/GLti394sRG+3QkCKhxMvg08RPRDFq9bGxq+U+GcH
	oOvhrN3pEjp02kh7+39ZKp6dT++uJF9tg5vHTcxlfX2EkHc8wbViGE26f2pnWD6k9w/wJ5pY0BPE8
	rJwWXuYfVJbq/OD69WPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcx8-0000000Fmca-48fm;
	Mon, 05 Oct 2026 07:17:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcx7-0000000FmcE-2Dor
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 07:17:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695105Sw470884
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 07:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=imz7x/wVPwZKLDpg9Q4Zq3lR
	2I09jdP4oGd3XJ8uP7Y=; b=GhedRyIlw7haVqBVnqmp2l7uifqO6PKbd9210YZB
	cSCFMhS/3A1YOL3KY28GZESOHRLCZOYCAg4b5ZQgOP5pEt7PQrfQCY9Yi5Hxisa4
	DZIZ+mDXEPoRwUSQtbc1hafFj9N0hvIBnGN/JoGOBgQ5enME2nSfcswJ71gTtnNW
	CQkFffhrByP2qiZZdwZgKyhADm2WMfwBMzb1VSP1sD6qubXIqDKKNoqI9oEINg6G
	9EHgH2fTGgBDYdb0uaVCuPcJCemNi6QH+nL87UcDRyp2noLZLP3c71q1FSk0IWWH
	x0rBrdLn51DAYLtN7JwxYOUscgKrZu8ifBWNNxCQHn74Yg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2ssucvck-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 07:17:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-917b7dd3f1dso27084986d6.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 00:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791184656; x=1791789456; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=imz7x/wVPwZKLDpg9Q4Zq3lR2I09jdP4oGd3XJ8uP7Y=;
        b=NQDGiSJOgUPmEFHh71CjuA7zhixLH3XtCY0s7KADggY+lhDYIsoVZ3yMp0VymLccUR
         VuzPWMy4tpAuL1zBbjTe+9qCP1taq9KQSWDDsdfIavw1fx+pQotkAd+x45bm2mcZEd55
         ArLXPtnYCH8+YInHxrxJchow37+83WvupUPjq0ewpPQGETMDnWziOszXn/k/CKlY/iL7
         T/xyz4otUeexaFnNvlQFyOMd0CtUykH0eJhZbHH8EAleiTJLk6UUpkTLWKvBGHNbLZiq
         qduAIK2UI4EP6SDoOfTSf7+ZEf6cY3WkbT7w7Xw1lKQ5BQkCP/OMZA+c417aiICYN/p+
         bGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791184656; x=1791789456;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=imz7x/wVPwZKLDpg9Q4Zq3lR2I09jdP4oGd3XJ8uP7Y=;
        b=y8AegmRhw7v4p2qJVME002Pbd0ytSN+Kl3WxC3x1pRMmy4xxXIEVRsXfOEhJpGWa18
         f4XpIRCxXLmZ0GjdjkG2X26pFdxRE89NJRKMJZgwRqdx8VnQ++rGok4tMFBikZvQvUed
         M4mrF9Qyj3z9V/SKL9wCI5UcgAl+qFTDfbKSzHUXsL3Qhw1WKs0905U+KBorbQap4FCk
         E8CWJtRykQKyYMJYGvjK4vSzsm/94d0tbMwpS/M77aVrBf3MLHEJdVYChHvN3YSb8Ejw
         0KvkbLG1LWUBgQBRJtty6UPpVuhfCnCFBZgOa49SXg/+22fK2GgF3fMAE2/V/rdhFJwN
         9ODw==
X-Forwarded-Encrypted: i=1; AKwUvBx94PnwjE3Cc73166ibDTDXBXNrR7oHdg6G4BP70eLApjoVoa/B3kndWvBzoKTkQbQo+aX1heJMgic=@lists.infradead.org
X-Gm-Message-State: AFuF++mbpR+ms2TOIjeSfJjvYXCnYH5ClHbTMuwBPJFB8lcZMy/beZqZ
	oFwi4wcgQ4OztoJLO24NeXvJWLG8S9zVEE3C+92NJzlFmQA4RnPgagA2TwVq3S8OBq09NYgqgQi
	e8cSw5vADyK5SfHALDrCoiasSDAjgL1VcUgRJbFduCy+RcuezuOBmj6Sx6en9WYyoMsFp
X-Gm-Gg: AYBFou0vzIKwPGZPuH+8sn5diVUHZuLcZUrvJqjb+PDe9uj3Ihp6zjQybsGHSRo8AHq
	XP59nCc+QsZ4HIbx0AYnogWMmhjZMdnKyLDrbtKgc2sRzP5gfneFDoCKqekLzwTCOYkkd4UtqKh
	3zltYvbMsINYBpNLME8H2d0AgO2c0bVjhvfKzx7FnzBi4ay9fN48rsEhFWo1hwNg3829VjIrYyy
	NRpjb4khvSe/UOexNkG5Rx9iabVi951wWdRaC8QsrmJ6exlVIYD9X+Whfa6E3iOH9ZJl8xIIF/o
	OjXVn6hGp69u/BiQJjQID2ItaBKqPtG+PTdsrqECLdoDnovajqA2fl5LnnxtH2LQyTbAdzKIPaG
	Uu8hf4pxK6tofa/7aL4egB4TlejKycxLlnooevlJFW7a1zZiZWIxYP+/f7QDJso4OR/ZWsVaDWN
	k5wEtLEh7r78rx
X-Received: by 2002:a05:620a:28c6:b0:93c:b33a:5ee0 with SMTP id af79cd13be357-93e510817dfmr1146323685a.41.1791184655752;
        Mon, 05 Oct 2026 00:17:35 -0700 (PDT)
X-Received: by 2002:a05:620a:28c6:b0:93c:b33a:5ee0 with SMTP id af79cd13be357-93e510817dfmr1146320085a.41.1791184655217;
        Mon, 05 Oct 2026 00:17:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bb7c7bb704sm3043111e87.79.2026.10.05.00.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 00:17:34 -0700 (PDT)
Date: Mon, 5 Oct 2026 10:17:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfXzns7mYctUuml
 mj1AbDcSfQJBoA09nK+clLCGgSuJ8CWG06TPQMnLxV9iPZ+LRJsAArfVri9n16pzzWuuKtdLzQ3
 uSj9qpTxmJe5+Wi5t+5Y0z6ndl1Ap44=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX85pRj6Mkx3iG
 BlMpSJYZQicMniS3qEy1wWotIuOeCH7t+ykfInfvHRc4Tk/5nmq+k71BfRdTmCDgkofhTTJ/AAW
 6h7K4+WgXMy4fazEMYtXtgUuiL62cgqy34An20UsKR/mzkoHM7FVPhXowSRMDci2l8x3LXlZf+I
 KRzVTdaNgIscpH0YKjCqEct9nDLit2ATRx3jQ83+1yllkGOhBvZFbaG9uL4VxYAfD6lHGE0xJfU
 DCoDUtVvEOy6XVcLVo9dHct64QWxi6IyoNVRYjJCNYEVKLIMJ1L6ZoZHKe78tl2eBxLqBxW2uTN
 FEHBbDpj1kfy67dh5UkFHozAHq2fec1cc1anlQlR/ZXq7r3NKk/YVYTU0076+EDSHQtLF+c1Xc/
 UeBSRvXKw7/Inj2K5GJnYUWKMZN51yNHYmWMoqQGtg/Mgpw7EavqkrJ0vlMYdBs2XJIu+dxp1rx
 0+ZRnNezW6QIvHD7zgg==
X-Proofpoint-GUID: DyPX0ippGPGcjw3hDWbwZOOWL089HxW3
X-Proofpoint-ORIG-GUID: DyPX0ippGPGcjw3hDWbwZOOWL089HxW3
X-Authority-Analysis: v=2.4 cv=FryQbGrq c=1 sm=1 tr=0 ts=6ac34f10 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=unmdmSOhVQtIpuyIt4cA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_001737_706105_67F6D231 
X-CRM114-Status: GOOD (  16.53  )
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

On Mon, Oct 05, 2026 at 12:06:31PM +0530, Varadarajan Narayanan wrote:
> Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> on this SoC require a dedicated init sequence and override parameters
> before they can be enabled.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index b6bbf2b570c7..8957f208bc51 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -29,12 +29,15 @@
>  
>  #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
>  #define POR					BIT(1)
> +#define ATERESET				BIT(0)
>  
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
>  #define SIDDQ					BIT(2)
>  #define RETENABLEN				BIT(3)
>  #define FSEL_MASK				GENMASK(6, 4)
>  #define FSEL_DEFAULT				(0x3 << 4)
> +#define FSEL_24MHZ				(0x2 << 4)

Use FIELD_PREP, please.

> +#define VATESTENB_MASK				GENMASK(1, 0)
>  
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
>  #define VBUSVLDEXTSEL0				BIT(4)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

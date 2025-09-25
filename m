Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F973CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88P380/AVFzAI9Y2bqCVCEQr6KIIZT87jQ2RFhj/iJo=; b=4V/P2ttGpXHF0N
	CMOry8Vrox/RFIOTZ7Kjbq+WWZ8oewqXDb54SHMS7uVwxZkffFtDzyq3g8UEHGPNSZddB4KqvGvzw
	jEfwnsGNh7I0t56PUXChzJLpK2ys7+FaAdYiC81myTCr68O1LMwn61wiTAaw5Ii+3Xt1YLMahdR5l
	V0UtnRoy4eWivNGW3qPmCTB3QpBo7AlfV2gGSvV8P+NlnvFFNc57Q3bO4cuGXRxlzrjHGBmk8nmmd
	bgTuDGWXQi3WnWwCz9laiRGCuulQLQFxLDuF6JDyHkJ0GUYGToGwzj8PToJVu4/Aign2v2uJjbnBF
	azCG/r+ZZMJ8J/OpEQGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1twU-0000000DMUM-3EJm;
	Thu, 25 Sep 2025 21:55:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1twS-0000000DMSA-428i
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 21:55:58 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQ4JW014583
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=a4ka2QLj2dY6T1dJyHEA3YJ/
	IzOlBv0wCYfphXRfYzY=; b=SpaBbqkKOy16rASA7DbdkbFw3KD6rcnU0gSxUHUF
	lY/Q8ztIO9imzJT/UI0c7DxYFgUtMxMUa3zjSpivmlL/bSpUZECRbouC6DOA4NL/
	de9raH2ZzvwUBijW9Ss3lHS62mUtu3g7pCsSoJV8Wu1yAcbaJL0/iO6Nbqm6Z5n0
	FG/11qrHgE7sDjnLZTCqlO3l8ZHirCqwPtyBbV29wHC04gOPtLhxm0dj3iYDF7VX
	J3dmjhvAtjxDFwrW/bnSIvYq3AHKvwBrOj3kpzPK5vJ2jhNCa+0QCMyJrHXQH8yf
	4XV1I1a9AUnBQdh+P+TAfH3jkoUyuifYye5PtG2iHJCuyA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rggtk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 21:55:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b47b4d296eso32373811cf.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 14:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837355; x=1759442155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a4ka2QLj2dY6T1dJyHEA3YJ/IzOlBv0wCYfphXRfYzY=;
        b=XblcSySmcCjEPpfSOxMbnVsH7ySr6A5q8lpPbG/PCMxjVVzA5fa0EfUbXeh1slvvAP
         xpzRI3PkMZ7ikPPbrgpkrfKDUFVJXb52gQjHWcDWtUe6vMY/y+nkAwIm2EZgGLDiyiMG
         hhlTVA33T0Hkekiv2xBewwutJG/KGFUAv30u7H14GXEKjbTH7/1Go3Za2P5psmgKUkQZ
         iuYI6+mO8XxhcwGsWBSpkevpyoS5LJQjQfHcUEwxdjmJnNct4NmihdB7WwJPzvlQQbB7
         iO2yXMvdRicCW348/dCE8sG8G8hsC3E9gs4onyIRqRFCp+CIRHt1rBoESmVaMyDrYhI6
         xg1g==
X-Forwarded-Encrypted: i=1; AJvYcCV0jP9xqyMnQ5Hh1uIJAjZKCPy7YEhTHjvrrLnI1DtBLttQUQwdY9E4J+x29kDwfwNEp7XDStugljQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA0kikNiuYAWxYIwKX48MOha159FW0ActadHQw5qTLV4CPv3Vi
	5J26U64CX+lqPiC15Irruz9VdOnktobglV771gctvVTAV8XJpd0PkiKMZ/xxBIileacZoER9EFR
	dEV18Agu3CczO1AcZfzTQZlpps4/v5f4yKRLyRTwmtsWzcoG/e2Br5iKBb51vRDlJKgIb
X-Gm-Gg: ASbGncvkJHbuUn1bxNZRVfRmqMzPQak2+hcT845TOy1pTqTB5LPwgQ06hd4z5sNhuhz
	cnKM8g34U/Pc4a4j4EEH026xdar1OFPsiiwLa2T+xg5cLhohmi7mpryrqqErpg6nHaDeh6bw0Cb
	fWKsk91sy5EMzMoQ5K2SJI9Q2Q/lQFHUBdjVcViHwbkAOz2FPRAaA8jiudLqIeY38OcftRRtwCL
	XB8rd2lxPb5BkN/5X6+Feua8Gd+HxsMuI5kexxVd3M6g95BYrrJ1JJza1mK0wxoQkqryB/QR12X
	uU7D46B+/pjsOSZAgTVslpxpeuO0Mh1UX8M98xXxCzppVkMQYQ3BGHs7/fCa83LnPatPiwbwj5O
	03+lFk9IKO0Cc3K4raBt72SPuS9yws8oDax5uKB3nx2RgI7rsbeXz
X-Received: by 2002:a05:622a:7717:b0:4dd:7572:2165 with SMTP id d75a77b69052e-4dd757228f7mr2467961cf.35.1758837355046;
        Thu, 25 Sep 2025 14:55:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYntiu6xF3k5Ru1LTdNfPxLb5elSDEpGFN8h/DlxytsTv6aBQLG8p6laJbBjAkaRxRB3PDog==
X-Received: by 2002:a05:622a:7717:b0:4dd:7572:2165 with SMTP id d75a77b69052e-4dd757228f7mr2467661cf.35.1758837354550;
        Thu, 25 Sep 2025 14:55:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665624esm1154346e87.69.2025.09.25.14.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:55:52 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:55:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v6 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
Message-ID: <af7y4m6pcaeavwyxmswkjwugya3na4r5uaq2hi7cevt4bu4573@3zzfjxpc6t62>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-10-419fe5963819@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-10-419fe5963819@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d5ba6c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7a1U2GcbA96CJLvzQ6EA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: IolOZhPQRx_Py9sMbOaEOt-0_rpsuGNI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX6FEhufB2g8SS
 HFBl7gLw5rNLQb//5VD0TE2ipRBBwX5/5Lzbxm0OhjB59x90Wd1HakTHdXgDw4233VuC0Q5Cx2F
 2O1H1r8jw8u1nX8CYXNK0XRXYgoae+xIEmqHYtjDbgVKNqusLAaRnMpYOg1tmjCOLFjQt6JWFcD
 LolcPe/i3xE2QrkIl4wI+s55D/U3xnaOh9TG1DDPTue1uXn31qcD2CsqAomm9x7FlyKoYHs8pia
 a+lF2LVd53QqPoND0iilimbW1UMuZHHuP8cfmuyUYUKu2PUwJBc/y6A2AaIFh+DJ3qg838fTYVT
 RzGZm92IWRU+emc2CsPW1z8O6pANWeumqWvL+L+qgt/TIJ8HL3Zf5Z+COXeO6vgRMf5sfATiaoY
 XDVI1rYRkUucxUtulp291J8D3aOfpw==
X-Proofpoint-GUID: IolOZhPQRx_Py9sMbOaEOt-0_rpsuGNI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_145557_004243_E6ECCB54 
X-CRM114-Status: GOOD (  14.96  )
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

On Thu, Sep 25, 2025 at 03:04:56PM +0800, Xiangxu Yin wrote:
> When both USB and DP PHY modes are enabled simultaneously on the same
> QMP USBC PHY, it can lead to hardware misconfiguration and undefined
> behavior. This happens because the PHY resources are not designed to
> operate in both modes at the same time.
> 
> To prevent this, introduce a mutual exclusion check between USB and DP
> PHY modes.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

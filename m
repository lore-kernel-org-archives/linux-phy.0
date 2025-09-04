Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05ED3CA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 03:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLa6RUtILACbJHJLPfqRPYQ3mssoCMWUQ1XyOaFe6M4=; b=UlWzkkEmUk0NVE
	f+p0wJBENkEv+ucAKbHQekis9la8aEjKvjGZQUIVEuVaizD2MOE1xycvicm/6EQNFrp9dXB+nszMD
	mKJvW06LqeTwsq1ISZc/yVWjqx+P/JzNrsRbe+emJGQ41QgODmnx/wXVxor4wrpUWl3OkyiaotT5I
	cgQAF13c5t+MVRDjsGCJp+qVJ9btgazbuqIM3agpO6LO6QAPNFYwLHbVhogOkmsL8SEX5C/WQfPjs
	C+fEXaJcBxX61trLjeJQlLvWmkQLShjvU6CtBY/8SLF73VLJJL6kM2gTDXWqxgVPORIyzKefGfFJa
	n8Q/U4jI7YEc1KJ6BNJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu0bm-00000008fPb-3IR8;
	Thu, 04 Sep 2025 03:25:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utxvh-0000000801O-0YFj
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 00:34:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwxch007597
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 00:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XfrJrvdyAXmQJVa0rcNZrHND
	sz8MqqvZWVWKrBmq0R4=; b=SekZQ3IlTy8JL2eV4UuBYUfIC1IkmkZsa88yasc4
	AcXVfeKGNRrY/gJMoIbwvK0vavZ/DMTZOADrXMvbo0VnSCit8/GwiSmjPXfKeulz
	+MqF11KdC0rxEXqdieeCgy6EkMBitpjSq1dgoJ04/kTDwa5vqeAZhv6q24PRL+45
	4qQ78VEX1Cv+B7/+JXavAdpr3PbAE5vwH/e9I+SnqIUU2q6ChBsq4BfbZsxM4r8S
	871oCf6XH/3ijtgwhqSYRlQy94A/3SL2aWg9X7FLlZ5YbT5nko1bsIUwuJEe1/nL
	nNVP48/TFvgcQOpMsibrZ5rCNdLwK71UnQ3xqRsIcAqxCg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv5r1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 00:34:19 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-720408622e2so8969756d6.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 17:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756946058; x=1757550858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XfrJrvdyAXmQJVa0rcNZrHNDsz8MqqvZWVWKrBmq0R4=;
        b=GaOERVN/Muz30U0YitHKtH9O6wFj3OpRz7VyIGP3DBHc/XwLZM+f6eNCLq8Ouache4
         fEuGbn1X9eFE/ZNca+efDWjF3Abr0GKPkmFR097khb+DdJdGAdfV1c2kOTZCs6VHDpx/
         oE4YFhi5jyRtOYIuEe9hd6yDQGclF2Icu+hm7EcelicffoCdurL0Orqsi+w69XRNTa6w
         yui6vI7JbDSeLg7C3QggFV/VfLUgq532aNDeOxh2paG5v+5ljXfuy2NLJot3n1hIPDkr
         bNlSVyzsO7UA3no/Kp95reP434MhkGbDPmClItZ2KqZ1PIDHlwFimu/+L/ZxxHBH+SCY
         5qNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPPIEkSkfHK6YhRCEiL9r9mD0kMWWPRGkrtmAFFGJFwr12UdA0Tcrc0NR24JV4ahA4udR5W2jniuo=@lists.infradead.org
X-Gm-Message-State: AOJu0YymOQcBEL6I69LwtvDlIPQGWi9Oy6uSsgxtYINdOmuzVffdrVpC
	ZOc9j/0nk6gnZpPTXdnKTEJlmjA6Nji9dpCiOb/gYIDnkcxFq7D/9B9Ch14QOT3yoQ/5Mf7Qwbl
	gE3MzSfkWqy6r/l1SLSCP4gogPjWmTzqhohIdbxRzaGqGGsk258bQpoH4LU93/1klAgQz
X-Gm-Gg: ASbGncsPrADat0ym5aMvuWPS5hcIQ94Mmz9AWiV+bsyzQH58DH1/9dbTsc3NNqRVY6i
	A2pTMhAL8VU67ua4r8A9A0SjHVt2gwy/miA4iIMHMomed4VAZ6ETnrfPp/ml2ZgZ96iflEklHLa
	Dhx4Xm8q4+dXjX6fvRHv5I+cEpyjAgCaTrcyOdDBIGUcZzAZfcFtwmynLzfYAbnXmwAw5OiaAhf
	rh7hRkiQZrYqKQ2g5dZVdW4XKFte2kb5H1mPNG6QRakLWTSq4MNl+e89/nWNDv0a4Ri3u2N+MXC
	JCtVLiJpWKJ5enDXzSKLijwvGLX2o5X48iP0viLlY+m54dDKTG+U5FgeQ/llyjvoFGf/xu9oKYi
	5QLLQcrFr/2aK5YlvYulOeG3SnmSsx/1tSk7m84Vo99kl23QkWujK
X-Received: by 2002:a05:6214:1c83:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70fac8a7b89mr177520446d6.37.1756946058085;
        Wed, 03 Sep 2025 17:34:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGja7X2uK+OYgomkOzPWpjLsAEHmq25LEESvoGCpov8TlZrxYSLZ5iKF7ssAy+77a5qFU41Dg==
X-Received: by 2002:a05:6214:1c83:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70fac8a7b89mr177520176d6.37.1756946057510;
        Wed, 03 Sep 2025 17:34:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad525d1sm814295e87.139.2025.09.03.17.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 17:34:15 -0700 (PDT)
Date: Thu, 4 Sep 2025 03:34:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Message-ID: <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX/v29nHfkl4XZ
 K42b20Pyl/M84GqFRxOi1qUKspZMIVqNYF6J6h/YVY04WW8FriOHe7GSLsyDJpqRcuP8qatsjJw
 XfOtMDafW4C2wwU3cKWDdg8hN047xFQoiY359jhkll9GafCcGh41/RLAUFz/zM2Pts1YicRKTJY
 ZQiSiBY0ufxfd4hXgxWeyIuibdiWD/BurLz0+wx9J9dpJGMNg5j4DQ6ZXCrD3tot/vWbj51miUU
 rOR9NoDJJ/Uq3a+NKMAnpCja+uafELmlSMuJetHsCRTHfkQGD7nZ4fHcGtACe748X7HRoUjmQmu
 iIJzAhRVdNFP0lJEKE4qYURcWcYF+RXoOkhIGHWZt1mpJ9U73mhhjrcIdpe3w0pG7PdWlgJxy+9
 NFLdjA8C
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b8de8b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YChNujVLCtOUS48-0VMA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: I2NpqIn99ZLO7iR72aqc5nlvR318Dl6j
X-Proofpoint-GUID: I2NpqIn99ZLO7iR72aqc5nlvR318Dl6j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_11,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_173421_301235_5EAB4CE0 
X-CRM114-Status: GOOD (  19.23  )
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

On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller for Qualcomm SM6150 SoC.
> While SM6150 currently shares the same configuration as SC7180,
> its hardware capabilities differ. Explicitly listing it ensures clarity
> and avoids potential issues if SC7180 support evolves in the future.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -27,6 +27,7 @@ properties:
>            - qcom,sc8280xp-dp
>            - qcom,sc8280xp-edp
>            - qcom,sdm845-dp
> +          - qcom,sm6150-dp

The DP MST bindings were A-b'ed and R-b'ed by Rob, so I picked them up
into msm-next-lumag. Please rebase your patchset on top of it and
resend. At this point I'm interested in DP bindings and DP driver
patches, the PHY part can come up separately.

As for the compatibilities, I think DP on SM6150 should be compatible
with either DP on SDM845 or DP on SM8350. Please choose one which suits
better.

>            - qcom,sm8350-dp
>            - qcom,sm8650-dp
>        - items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88687C88E66
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNwLEjoWm0aP2PQJHwnhK3yZZiyBfY8d53QFP2qoUPo=; b=NVGrsaNDY0pCFm
	uKUCG6PY0q7eRUF+MEV2/CMjQxAjiyRdDh8uR/GT+ANP2xQg/m+2N+mU5Pl93vAs3HdhNkTChqz5Y
	PEY/VIqMulxCZs9XlwBD69pf6aAE+QZur2j5s/4B63vZYlE0cGD/11Mj7f7rSE0r7njVy4txwSBqS
	pow535OKJBn+YbfoK4cse7jY8YblsX3PL/b8ow/k20vS1yhwIVC/xCJRR9KAYEvWU0NFEDBBL9bVp
	zswgC0hSItMidXNiR/GiMS9e2w7+dhnbSTujQq7zIfCX2VLdvj+GL4R12gfI24/616ortMArgtQ/V
	DoUPP3BgbVj/ikJr99Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5teA-000000026Bf-2KrF;
	Sun, 13 Sep 2026 23:30:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5te8-000000026BJ-2I5J
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:30:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DLCop42996934
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:30:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nj6aKZsVdCtHBveKqJbFsHIv
	5njnLbiwoSwtuNudUX8=; b=BLIn0b1pzYHzxP2Lv8g7Ru4r+UzUaWwIzfJTe7C5
	Gco5h/Y/50+2s8218SsY6pJwkOj0Tj9Argy9lEkx9KeQY9BB4rzOHhIPt1Dpsbns
	tcMOrz4D9I9ubaNrCCi0sKJmgE0xDEK+yiAkZFiQnwhrOFcvQddF4sWcTKFu80Yy
	w15BITzYT6HFX1S/xuzogHTDpVMaB66o3Zzjiix3Dw4dZM7UBpxRT2qeoIa8LMyu
	gfYUAS+5wwpbLlJFMyl5eUP/n/xnd+xFgIyvNwGJLn44xqT6TTsqpd/A2TlEFfZu
	RjmIqTRv+dtfv/4O8Qiwd+v6KUfuZUQXlRuV7ATNJAj8fw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gp3hsr6b4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:30:02 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c82c2e9761so611868e0c.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789342202; x=1789947002; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Nj6aKZsVdCtHBveKqJbFsHIv5njnLbiwoSwtuNudUX8=;
        b=ZaXQeLgGfGrbpsihtqG3hyVD+txuvbmD6H33jsDyJ2uU+AL3FBvdCTyyILiYK6qRnt
         0TXJwFS+29fPfvn+M74EbbrTDZQ5a5TI97kFTT++NpCJpdHOfrTmzFsvkOSAdtkumuoK
         4ucnw4mIrJLPbabtyFvAfz9959K/+Wk7z6Lupk6FlvqX9mpae4VW9EdZ7OblPId2e1k7
         z6AqW6zPgSRFhppRKeQCTUDgB1q31RbWM52nbim8PCPx2+41yd0mUMTvVAoCjoDKI4g5
         jg+j1v5SWaxfxIx6152wiSpJZK4LXQuIOr1ehDddV4ECke429KE4o9iDHwbe0fRjjrZN
         /MTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789342202; x=1789947002;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Nj6aKZsVdCtHBveKqJbFsHIv5njnLbiwoSwtuNudUX8=;
        b=Ntn3ibPzVQvfm7tBwcqShhqt3Dg49zfSPrg8QVMssPvjVX4rQctYt8QXLo/rJA+euv
         7vGvpI9CaYSoPJ7xBLU1lI4ASvJrC3vl3gaDZBhSGepLCCTAegNx0kEN92pwBn/xilNA
         f7MdlUMKO+nfJdp584w7VXIlSxNB3X0E5qBoCLE9rQIz97vfYBcO44MeUHME5TtUbf+W
         CAr2s74CkDL8cq8yZXMyLILREGjPLJwQ161n1AeuwjzKm/tVCB3MzREs3fgx33lQP+jK
         YSv0j99JGj0OAno4Zle0SB5a0wT6VQUpSf5+08/VBeblCgnFn9gQFJsSH8etzhNpkR/5
         w9iA==
X-Forwarded-Encrypted: i=1; AKwUvBxtRAOsQXijcjiRWIjCG/HCfkAqHrE1K7LLT2WdL6MVGb3ZhEbEQK3puJgfpkxURKfb2Uk8FXe+d7Q=@lists.infradead.org
X-Gm-Message-State: AFuF++nrDAM5w+2IxkwgJJUPziW6JRsuwBJvDIie5f4l7D6OYINCxLMj
	BQE2ZpPcCF8jjQFZ9Mv+Kp62euihznKEhq11Zy7Oh0xwH2mfYcEAWmnVEYKlo5uvSAVfEdRflJd
	ux/UYexRPqXDVOLFc2nGIpL7LhLwYtB+1xdsRVVzNxs1LGBXfquFSDWBtupRq3cUfRp0e
X-Gm-Gg: AYBFou2DR0hSvtmPMTqSw/yVKgM/KxNZr7f9KRfdsqb+EfON7F7c/PkDFHvZuvV8NDm
	GHo+Zl+vlv6n2OO9MG7LFx+w0tL7cnJwc6AUazNjoKH4FmdzfzLnIhb+TEXuGoEnR6V9kwYdIHO
	WVZ+DXadyIJ5mS1o1QVQy+Rwoj11zjYpahhmdPWBvaPt7dY3cMRQ+W6FjkKUujeLgzcfGhaS0m/
	7ToHeIPwc5ZWxVOT8piaJ8Vs88Ukf0AbkL9BCRkNRrifFTsJmd64MtIRtBXSFHz4SEI+uCOjOcy
	44pIUCY1khMetp4+uAi4V12Op2mrml7DCxCO8HPT0QOCvsqJKKgGXWfwQNFC5F5Nl/sqGw7FYJn
	ooW24se5nu65usxmo3I0yqCU+erK9/frAiSbet+x5iW1NGd9d0tOzo1pIAN5WgVVLfoE7y1yecW
	rPiIDNkLQy7Txi
X-Received: by 2002:a05:6102:5792:b0:792:2a1e:f9bc with SMTP id ada2fe7eead31-79b5963e001mr7194137.6.1789342202030;
        Sun, 13 Sep 2026 16:30:02 -0700 (PDT)
X-Received: by 2002:a05:6102:5792:b0:792:2a1e:f9bc with SMTP id ada2fe7eead31-79b5963e001mr7177137.6.1789342201620;
        Sun, 13 Sep 2026 16:30:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a5a33042absm22708231fa.14.2026.09.13.16.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:29:59 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:29:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 01/17] dt-bindings: phy: qcom,edp-phy: Document Nord eDP
 PHY
Message-ID: <evvgtf6b46zqpolvybz6xfklakgoyv2llnvawrblgz6np7viza@gtmqflkwwmgk>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfX1ThUkycreLWk
 5raah/Nn7yyeDK9EQOphH5SldvNkbVTowelQTdIZruww2igYszsKmrtNZLz74YK20cWLsGP5c5h
 DLTu5rkgtaaJXKtN3sbqChP/5i3wCwUBKKbnlXzpdVaF1uAqtPRQnTYP6DEOQeoKATW9Kd2nwyc
 EfaxAo7PljuLaXbDBu+Jp2f1718BThw071z2oTW2AucA0bB5f21Jc9n+ShMiUwJk2q3shsE0BbV
 Ov6hp5LBNPBX3/c7RPkNPTwE4/s/csPedknLrhe2SaPqCUAMdXtTf3fRk9QzT6Lvg84KRZt8F2q
 UOivIKk8Qqn5adL6b7HYLGSSChPknwH6pYoe8MOd7It8eGAlkr1iv5PD0jeSlFQ+P0GkKvPbqhQ
 85He5tsdYiL/rchKfRCHKDBsZiupO0SWpIHQi9TYLoyd7OyM5MkDj4lcp3FDuWLaEIOFUu5sZ6R
 qM0Jan+IwA1UT+Erd6w==
X-Authority-Analysis: v=2.4 cv=IZwSymqa c=1 sm=1 tr=0 ts=6aa731fa cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=07SeQkCZaLl9qT1boBYA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: X2QpHkVTVBdm-sBNuxniQOGGPhiwWfY6
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMzNyBTYWx0ZWRfXxrhY3kJUxWlH
 1Goal+7CLxP2EUouqgsVg5d686b/Z3/klFnJD9l7AY/G9DseR+Ty6rGs5+wmBAI4116Poili8Fh
 e1PcCWp+JzCmGz2HbyOKhu9BZYwE7h8=
X-Proofpoint-ORIG-GUID: X2QpHkVTVBdm-sBNuxniQOGGPhiwWfY6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_163004_708499_CA2D1DBA 
X-CRM114-Status: GOOD (  16.91  )
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

On Fri, Sep 11, 2026 at 09:06:32PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the compatible for the eDP PHY found on the Qualcomm Nord SoC.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Does it use ref clock?

> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 0bf8bf4f66ac..91d7a5c8e19a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>      oneOf:
>        - enum:
>            - qcom,glymur-dp-phy
> +          - qcom,nord-dp-phy
>            - qcom,sa8775p-edp-phy
>            - qcom,sc7280-edp-phy
>            - qcom,sc8180x-edp-phy
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

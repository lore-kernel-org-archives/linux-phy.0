Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BDFDCCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebam8EQXO4UPz17PaazVaoR+aDWDUv34JJ74l7oMreM=; b=eDxnt5SSlOsaFk
	uFpj7i0C4Ticct/p3KoYpvGCe/qsPlb2+YfB6bkyL9Kqtl6yY7XVC5FkgynLZa8pyca/WDSkHra3o
	ViT2ii5gdiFBLBk80NjDjNhOnf5JdpiNthBBg624Ua+GkqTEa/5rq6kCmoFCaxWeH/s4TF810DR6m
	9CIB0j2IM0EUNjRg8kUREt+MHE4ZtWf6Riwdu+BQ1A4tF1Q7nGs3pRQeTe/fzCEr04HWKHla3ekp3
	/jRZhDPk+C/w1mOzZBq+1anp/eEhUqlrjW+zeh4be0HVHJ/USGNav1QiyD4O70wKwQ8F6Z4mMtT/c
	mms20/UxnT2mscqY8UqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HlQ-0000000D8an-3wRm;
	Mon, 13 Oct 2025 12:34:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HlP-0000000D8a6-07MK
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:34:56 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAWdoZ011022
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gObp1VGk4sT3wo0aNUTQnaxb
	hlPxOaJ9VK/6dcghZLQ=; b=TXcT0qSBuY5yfp/PNTnIrw7XNb+s9/QYCReqou30
	gtIGh5w1O98le1QLr/UGIlqf0FRAMWKyhoiDDhQq/h5jYDxRoxHhe6PFGxmTGO4+
	iKvu+DfCH4bBE45FfhsCs0Kr6YXrVVfvxA52xvansO5wQ7lI0sOFFKbBRHrR6CF0
	h8H2/uLaBv/6+Iq89Xp4/B79JK/GTDI0ThFUGtYMDBywKpLJu8svaMWw/lmLFzZu
	R+K8n4dJuanKaKDQH7sH9oCVV5sXmIT25qvxdKQhxYsCoq+ieJP5tDS+KCFNMaG+
	OCfDv0LxPObPXHhVyDS8uCiV5xNtoVyaJw4sHJ0TQhqPDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bvfm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:34:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-859df490f9dso1015787885a.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:34:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358893; x=1760963693;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gObp1VGk4sT3wo0aNUTQnaxbhlPxOaJ9VK/6dcghZLQ=;
        b=qxwuBjALwnzA7giyneYmXd/wijnd71kFI5zu7pnhLRFV2/VQV56H4gXbPTi2AcPsAu
         ymQ9bvj8OcDG6R9iCpCxroDMlf5rW9v97sH0nrP3xJ5BIjfuI68hN2GvP0wj2gt8W5w/
         foJYAiP4CHz2x/msX3XYUzCPGbtMnOHjg1GfP1XEBpZa+AS12Kl1lZX6oaOaYEdSath6
         WlVpCLBeysJ+scdDZgjl/V+nxDqLB24G3cwRjZiSy1ZSyHb7xCTtTgzAIhaFEh+Ezhib
         89WkB44EuJIpUOXOXk0AGtX23N2O98LyXm5VWElWC5CKn8ak9waESU03JQr4w7QGyN/v
         NIqw==
X-Forwarded-Encrypted: i=1; AJvYcCXCYZwwU4Fam4fLCEwCIE9if8s/8cRDPOWqyHDWy9XQ5AP3Np5zTwdKbTycfF/5mu6RzFZYSEk0uEs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOuSFHFLEts+7HFzdydi/Xda2ugpf7s3BBVcETG4ppA//SvbwY
	WoyDECBMJUxeMfHtqAxmpDdnl2LLYnxPnPrxo0bHcaju02mltu7jX40a39MgNUzm4mLhWlp9FoV
	e3sJ19r4fjCFfHm64nqOqj/r+CyIOaKi47rF1AsoJJ32xNzXrm54Hb3s/exE3TS87MQH/
X-Gm-Gg: ASbGncun7juaq4FildEo0lchDQFTmcxQX345EEA/BTKId/0lSfJbgUDFhp+dWJl03XQ
	/uzIishhdJmbz9FRl6k6KVn1441pQxXN3J1qsBMUh2elwMM3dNrbyaDnaSLoH+oBn+kHQ6Yz1ox
	2+rVevB8cuOAZWNK3mWMPjQCYQOYVHahz2i2MOxuCLILbTmheVq2BhZdiosRkImQ/J1UIBB2nAi
	0a2O0lcRWrmWxrw95BxaYC3RRaOWUA6eeD5MlsqsMr5Ic9kJDZmc4hNWvNfTHFzeZ6NL1umEGuZ
	WgKKNXIyzOc+JYPhfOnfKmN6+v/FML7aFplVHNp3ACwDEBQzg9ZWmV3g1iB0cD36yuraKBjg/k2
	wFvDXlKOX1SEpR6lnk4HTvR+sbwNL1Dyc5/r1Bmtut3iapstPDzj5
X-Received: by 2002:ac8:5885:0:b0:4b7:9581:a211 with SMTP id d75a77b69052e-4e6eace7e6cmr280427941cf.24.1760358893357;
        Mon, 13 Oct 2025 05:34:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5+lAIUbag3KQ/uyAYMUw2tzUdGLO9/5D5HdSvdyoQpY7sOU2YLiAsMhiWrQQX23CCsWeehA==
X-Received: by 2002:ac8:5885:0:b0:4b7:9581:a211 with SMTP id d75a77b69052e-4e6eace7e6cmr280427561cf.24.1760358892867;
        Mon, 13 Oct 2025 05:34:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563b53sm4075703e87.84.2025.10.13.05.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:34:52 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:34:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <aifibm7pjva3rkb4gkzyxun46sraxyeh7jh6vgcirv5tsbf6ad@7f5bbs4ix7sa>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-2-quic_riteshk@quicinc.com>
X-Proofpoint-GUID: ihRgV7kpMLF55t6oDsXUhSU86AR9L5Kc
X-Proofpoint-ORIG-GUID: ihRgV7kpMLF55t6oDsXUhSU86AR9L5Kc
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ecf1ee cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=yLsOkrEfH68IAt7CJG4A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX4zH6TXIihlWh
 iF5cmgRzDt7RXuLFZelG1LB+gS3jvb+3fTExxEujLB9E0Zklz5jqvJ75oEPpkxb3s6Bs2ZhDkOA
 hXJHqQoRt5z0M2ePfhooYddv5ud+yGuwM/zE8HVmtgvWEYv/0jtd5yedJiJRaS8r1gnVPMFkyq9
 hw3Vq5Y+1PUDu43ZBTIvOIO8rEumibNnUMpsEPbIsGPozIjw2GIR8gSogBRA/AV7fVuvt4wMr/G
 RvLj1yhLg7cdPEF4f2BikDvePGdk3R7Y28HAGgw1bRmB0ONEmlTzJp6XnlRc0mxaCt6irUeKqZn
 Sq+FSNioVm3p9PQ41u25fBu8CdqpXL6LwV1tQzZyMczvlImkmwqN+uCKbkYj7dSX5Lziy2D18WV
 CQAzwwVB3VTQpYviJ7YO4e3sMmn6zQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_053455_113763_AF45EB57 
X-CRM114-Status: GOOD (  15.63  )
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

On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for sa8775p edp phy.
> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..b0e4015596de 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -73,6 +73,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,x1e80100-dp-phy
> +            - qcom,sa8775p-edp-phy

Usually such lists are sorted.

>      then:
>        properties:
>          clocks:
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

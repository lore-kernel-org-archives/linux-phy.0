Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B24C5CFCF
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 15:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iA46XOGmr8b5GioRlh32jpwQsv2oW6u6orLn80kTDi4=; b=RH0PSctBiVhadG
	JfmPfrbP2EVVw+kBcvqCPuJ1+ZuXfl3Cz8XiX1WAls6iH5rJJJuqHyHM3Kst4hJErhiZG6TAUcOqy
	nLfMDYVBxCjqvlrO/gJ3nHuRAmd5owWBEWF9j9jJyImM9CcMXf6nYw7t+UmpMyn2yrSQppTmatHRn
	jXJ64YhGVVq2psaEqtaFEotD8zmAlO5PpFx4YRz3Q4ukvLUAMc5sTkjgoIpqGH+pJvyY6XeF0m2B7
	A/BpHbnA8j+rNYrbL+AYc5yDqpCjRd5FUQHS1extyBIMhGE1I1OElChTPJsYQHMKqwuDFVHRqwHC/
	Zc0JNxJSDqmdiSe9/63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXVi-000000013If-2fBv;
	Thu, 13 Aug 2026 15:38:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXVg-000000013HV-0Jpg
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 15:38:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67DFU1Eu2374721
	for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 15:38:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=81QTck7ToasER/Cqp4PaOmSG
	5GxMRtjJiad/1RRYt/g=; b=GCGyjBFwS65JI3QdNm+vcRFXkbQQmRDOdTx1mYWI
	VO8WrPsXsBvlhxFLgpKPtyEoZfSktm6hI6cDI9A6yJvr0wx0LSsxiGfr/cboFcyT
	wYOoK6pBuki8WfOdjmkZOFBaC47+I46hrn2QYU+cOQyP+Zi4psUfuLSNzCN4sZs5
	Iuie6SfX+KoNd/kx0nYm3M7S08JBJ+U9nmtzhFLs4PUGtctQi6Yh1nE7GvXeXMhe
	LBku8Gd6PtMvEhEwEpcmkSEGRBwO8+7cAj8EAL+dHy9pX5vWcsmwnCjR6BcVkrc9
	B8AoL7YehE0L/MYIO1qgYY8zCOZgdYOkNUuZXN3qrnxmcg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g14syk68j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 15:38:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bfe3fa93bso488051cf.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 08:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786635502; x=1787240302; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=81QTck7ToasER/Cqp4PaOmSG5GxMRtjJiad/1RRYt/g=;
        b=I0hbQG4GbQKMZuKWMV7TopZ9CZ50IUBCpm87W49CnCteFzpVQQ/5kDXggIlM8au8js
         hd8iPb1wspBEUgP8OSoHaocZja6ssylL3b1kgku/oDFmalE7AN8CQl+925WNhP+rHgHq
         cujdMD12d3ED4tLq6TAstYSl3vRu05q8gB9IcFH7IMNgi2oYaTSNgbIePw8uJP7k0zMf
         vc7IIKB6PIvcqd8STk8ErAr7uRhHvHm5bAfJ5/JqrzuWe82uhHbhzG7lYzII/u4l1SUw
         zScOoOTNv4wZDXD9+wLH9nrQFwaK+UNoNoUCF3oXLIOIJFqUB7+RLuyHjfE5cO8Yeq+x
         18Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786635502; x=1787240302;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=81QTck7ToasER/Cqp4PaOmSG5GxMRtjJiad/1RRYt/g=;
        b=LrwD4WeXbtEwALOyTUd3p8kK4DCJLQGJPqesu/GFAjDG4KhN2+VSnMmvcToSCSELRK
         GGu4/S/acz/TbdrC9oQbkkN5wDbIOALm/hFF6YET5umrLoC8I/YtatsDLaKHMYDljus+
         e8X7bkEHVrtkc/7eaarxDV2dGTV0mnYJkB5lIwYYSFK6fjZJJEcJ2HyZjoGcZzN8kpk8
         D42fM8lgne5zSX4b4BlUmKYqR7NWHrkQPJbJvudEspkfDTDSwY+mJxNPlyXhTYFxXUJs
         5Cl5iVu0bnplvUZmBQO1jtC4Md0rwIgKmxnphXEyyYQF9ud9JLRGZdpWhCXXBxfq+r0/
         nhLQ==
X-Forwarded-Encrypted: i=1; AHgh+RrAH7/HCNyfYxxd4u02EQ5/4YV8U/TzDvY0rntBfyhlo9WEwBbkxQNPALQJdQAqTPTDWxJBpgeYmZ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPwbmbky6XnUJilzx1fuhMHTCXTPdgtMwtyekP+alvcmUGNOH2
	7yZSMjZs2g+w4NuEW8X+CRbbuL4DVKmy4qvw1o5AKUdlk/+OGJWVgHqx1tzkj/7ewmyX+9OoZpj
	UO1V6nvcY8bfzVEXZ+ubuaJVThNfsp2Zvg4duo+o29skeybGIsHuDxGXG4b+7FkDiRo9L
X-Gm-Gg: AR+sD10UmDmOP2Aqx+kcGh0t6mKFAX5UU3kkB/N/oNGyvzulzEIBMJA00P+WDLQY6Wz
	sdW+QzkfkT/DueY3+aS+599r6EgwwzFjdXhIamy5zeNYg/dWsXKCmjkC1+S7m4t6lFWPIZj7BH5
	coTKdaNn4pf14/Nh2SJ/fh/3/ttr94FZgQbXc4j2iBvYLAY1tv/TyviJ7b+9nn5jmc67pXDc7BR
	lhVnWJxboDEq9IzmyxXIpCOCF4oP5CZvlycspPBkg7WdAioc9dkqYE+iEsD4awSDSAxqdMPW6v1
	LBDcT4/DIQK7GYPafzuSZcVUC9i9UZtlEojn3QZVN399Ciwyvj9mEqw2DtFGb3qJ9Z8z/aVKgwn
	3YIsn6saPQwyRJfSjOyRLUDc+bBYi/oTl9lF1zXM07T/rXWqegpVNLg6RFgZwCQ4RNDAcYFnvXv
	V+eVgbfZHka0C3
X-Received: by 2002:a05:622a:1a9b:b0:52d:41d0:89e0 with SMTP id d75a77b69052e-52d73e3c8a6mr63097091cf.40.1786635502221;
        Thu, 13 Aug 2026 08:38:22 -0700 (PDT)
X-Received: by 2002:a05:622a:1a9b:b0:52d:41d0:89e0 with SMTP id d75a77b69052e-52d73e3c8a6mr63095941cf.40.1786635501601;
        Thu, 13 Aug 2026 08:38:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a130cdb8afsm281261fa.22.2026.08.13.08.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 08:38:20 -0700 (PDT)
Date: Thu, 13 Aug 2026 18:38:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 09/14] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
Message-ID: <x6vh4vejt4ercdvfhbfgq7ca2nd5fhvgkp33gkztedthugfeon@o3eco25qtbap>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
X-Authority-Analysis: v=2.4 cv=ZcQt8MVA c=1 sm=1 tr=0 ts=6a7de4ef cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=UqCG9HQmAAAA:8
 a=EUspDBNiAAAA:8 a=okkz_DIgOYwYE9KhFHQA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEzMDExMiBTYWx0ZWRfXw/bZwcGwJXOd
 IHLHIF97xkpBuAXEEWZP2zo1zfwTHbfzorXmb+rjrMcn2FOjFp6Njn/s9Gh7cfc64GkhEPVDvvG
 VSTxGRKzPVZhr7UwgwkkzFoRJCrdmMS/lp8XMMgTeynRuPpQWsdsQHfvjBeGy3nvRNsceiuhRrL
 JAC6y02+0wyc/drL8rCGxJ5qXjbLKZ42yLbMZthyjNJNbObTgE9Rde81jMjLLU9h3di38qqrRas
 KjsXkd1OATGSN8sKfk6hqVZuc0QE1Fw4eFhjLI9J2Qv1bjs0HOjSk5q+n7q+WnmTsDQ2gAB0kHy
 2BuHQCoyh1pxkrh1q1Gn1PbJSipKV9/C4ofsuLYwZi/2iXH2wsC4YCVALBCI+q/7eINC2pJYzqY
 dKNElwHtNHfK02VDx4ZULGG1DvHAVBc+1dbjgrSGxteCQGicPjdddc2BIRX0p1ZIOzxrtH4hGkN
 2lSLsJu3PAqUA1Gwwlw==
X-Proofpoint-ORIG-GUID: q5uo1AKypebBCW0V9OnJb7rDEdQ02trv
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEzMDExMiBTYWx0ZWRfX5GWD5odUxmXu
 e+ki+xpRqmTk8vR5az8FAMJs0uEq3Mr5Mp3ow0Y2OosSCtWWWgqG2DftnBiFVn9L6kyrQ1rHUM5
 XN7W8tzE0L0IoABskpZj8wU3DmG9Zt8=
X-Proofpoint-GUID: q5uo1AKypebBCW0V9OnJb7rDEdQ02trv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-13_05,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0
 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608130112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_083824_147647_D735F2DB 
X-CRM114-Status: GOOD (  13.59  )
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

On Wed, Aug 12, 2026 at 01:34:44PM +0400, George Moussalem wrote:
> Add aux and lfps clocks to USB controller node for Super-Speed support.
> These clocks are required for USB3 mode only and are not needed for USB2
> mode.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

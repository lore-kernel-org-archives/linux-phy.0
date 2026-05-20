Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F1E9CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 16:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVxZBjOorRVPz3GLVDqHDogYSZWOY1JvXnm1PBy8Dqw=; b=LyrliFSSvXGRAS
	Zr3fxRiw/Q6Vw1zlDchL6c9Sfuv8uyO9Oc6cRqnfTB8uwhBGre7kLs2MsTImDu6TTt+/01p5f1DN5
	XIA3tYH3/kZ2p8v9DGOViKhLos0dcb7TP3kMOxtQ5w+Q5ZwpyaEfhEigR5GGuUXTkqy6Srwej4PWK
	OJVWcmOzIX+IyVA6h0jtDIm/6JYwZS2eUg4mIc0UjFVdkiwgJ//2PARAyV7fhHZ22vnv4Xmhgr+iR
	Z8Ypv2Cp8OB4uakP6TW7gjFZFqupOefLJ21b5KGW94wAXSK19ddD91H9tf/lQ2yUTsKndK00ZuMny
	3+Jwi0cKZIvN5x75V8JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPjjJ-00000005AE2-22bE;
	Wed, 20 May 2026 16:25:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPjjH-00000005ADD-0JGq
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 16:25:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KGFtkc1177853
	for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 16:25:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xz0sUxJ3nHFrIUac9Z0r1axi
	lM92v/+rr+m+cn2RqQM=; b=Kd+6S3P6Id4kRCRjyBWKjDxXK4/fl/gAqjpDGMgu
	kThkDREySxttwciAZ7gbrl9xWlBWVehbd5MdA7n7DTN4diZka2lxIkZqWjK3JuZE
	IfO7ZFgnIEHQja57LFK8EEMWYlDk8k/YdGYhTI4azO4+BS3aSjzHu1y3Z5IwE9Rt
	uaGV417TQpIuM+4MKjo021IjPtyUaHSGD1kOfsSFiwkZwiamZyck0IIwTlZ2MRBj
	eeNzt+8C/itRFnksQsXGgvptSXySA92mj03JgsgtVJoNwwNI7jGWYT3OAurOA6QR
	IVFGddLFW9WS5cHElsfkuAHO1Q3tmtRbF3cys58NjX8+iA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ap6sha3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 16:25:06 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-575b418ccdaso2171810e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 09:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779294305; x=1779899105; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xz0sUxJ3nHFrIUac9Z0r1axilM92v/+rr+m+cn2RqQM=;
        b=IQvgevMlN1XAvL0AVGa1dqp0ZhwDaBpjPml8UoRkFID9xbsGQm8fmtp/47QFUqBvET
         RUs57w4jZ21TcR9kyTkW73UuAhf5V9DrzHyEL43MrBGTK/hDqEgw0sPt2WBo5mQLtF2O
         ZNHlUgB6qgmlx+RQleOstIHbY5x2/4X90Gq/75U88/ZkElhlw5FRtIUvf3LA6lBK0xol
         Bimq2Wgpw2325XeuGrawasN4RDCkuhGAZusdRWTPhp7EvJ0TWjdS2NPr9RaLj4J2RjGw
         rBR19gK+v9RfHNj5pkq+3giFtt7YCpnD+wevX9GtGphT0V5VPMh0L4d9oTsuz6hqjnEq
         9t+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779294305; x=1779899105;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xz0sUxJ3nHFrIUac9Z0r1axilM92v/+rr+m+cn2RqQM=;
        b=Qgtb2f7UYeRaRwo4ywPo9bkQ8Xzt+oxoNWJcDuHrlel63wOnkfc4ZZcK7eGXX+Yda7
         Ve4ycu5sbmwb7bKqnIf8wp/82pTskswowPdhqUSB5fFRjOYyhTIev8oox70mNM6dwnFB
         zxGmdZIvGK/25KphxH+yquTz/oyrs9Io1nMHpcLRsJd6KqG6Uf6sgHPGLdp13jID0wg1
         fS62o213PjiwXs9QfRVM6VaxPs5+uflIYV1hv2z9qqqruNWxwqF8/Giefb0smE3yJET9
         FhQqjVy+z3lpvl7clAdbhT8aPOz5o0sskj0r8NO54aoiVRgJujOO67tHkApb/pwN6+qb
         l3hA==
X-Forwarded-Encrypted: i=1; AFNElJ/3jW5Q8dFwzhFONVeqklpuygufOC4N0r6MJ3K0TfZ9yzLpsn2NFMAtBYKQk9jpi6IHyd7taqfWfJI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywnf5f/goQjayz3fWu4t1HV/grdKlzH+DvfR8Tf8BC0AP0ehTme
	jJm3WXwuVA5u/ZV8rORdYoIR8t5+RXTJds3KgsXoop/9W3+GgwHMyUNaWVvivqw6uRx6TypBX2r
	B07O7+ny2BA8WBEW87s/bGEkxigxNdTA5PV8dL4fDc0VrPUSCteeslDt5+IkH0eMp73aY
X-Gm-Gg: Acq92OE9zpB3G/Uw6sjcOn+wIHR6h02Ib9u4i7pkSgUL4JdLIVj/TvtAF5Yi0OBKBab
	dThQFaQ8QFlE768fkNQJskGeG14hHNmPj6fRdPwErHjS3MYXjl9mTpsMtrI5xpj67tslC4obfZv
	+PZ8w3nJHEvpxHxCmWN/3/ZEjEyMG2pI9nekA6GO5hZOYtKO9T5QsWUy8/kZbezA5k4uV6A8Lnw
	Mrxl1DbPIAEvgOqI8BrNz970EPxX3isiPYyzPLYyOA3Y1PSWNuDYhiiapvDMgSNb48LYBTqaoFX
	KPPqRApFya0bFt7n89bVvidYseULsuXC/ZA6RK9qekWxpxJn/tUPY847H7k+CUB+qyPdfIZUtXG
	zWMfKMLpyiddyWzW+ws47vOYdvKTBrOcHPFp8EQT8UG85jUttSyahXCIHeF3vjFIJqdlAOk0UJg
	imdJbN9ZKjNau2J+BaV6q70uGgA4NtEIWKywM=
X-Received: by 2002:a05:6122:6b89:10b0:583:5e28:17b1 with SMTP id 71dfb90a1353d-5835e281e1amr513025e0c.12.1779294305214;
        Wed, 20 May 2026 09:25:05 -0700 (PDT)
X-Received: by 2002:a05:6122:6b89:10b0:583:5e28:17b1 with SMTP id 71dfb90a1353d-5835e281e1amr512980e0c.12.1779294304646;
        Wed, 20 May 2026 09:25:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a90f11a7c2sm4988382e87.32.2026.05.20.09.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 09:25:03 -0700 (PDT)
Date: Wed, 20 May 2026 19:25:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
X-Proofpoint-GUID: 6veoOouzSb4AMWiARyJ-WXxhAEniVd4I
X-Proofpoint-ORIG-GUID: 6veoOouzSb4AMWiARyJ-WXxhAEniVd4I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE1OSBTYWx0ZWRfX7X1S9FEMETl2
 kpWGLmXBu9+v67YwpsimNpOQyDafe97bx7gTmuZGk6VnAXxJkMnbjSchj0AfVPsgxP9X6bsbGZB
 RTdlLPh0xGWOhCQjYmhnrfZbXsz2HOArckKROEbOQJchw9dhE1W5ZXR8zBV+c3uCTBgY325KCu5
 9rlhpKvigwGDMESUlXDtWWcKuF/M6BjnhwnZJhTKT05LlTIb+EUOG5UM3AkgHjJS/sEQ+9I37Id
 +Uow3V88aVivG68r3tSLOGkAp63fSlUAJl4IkhskcaLvGfoFj3/1r0NmJxP20EtYQm/bR8DOm4I
 shDKpXoQOnFQUPNOpUOS3d+7hZwKXEGi+1/vl39/shLoqczUFW8vxdgA42DXRGPBClLjvzTH/zg
 L36G+KktXmyIc4bTiLG1Pzo4SDVta96foQZcLX14W8RLrHiv6pbVj/apb01SnS0Gq2q8LO5ukDd
 hhAlfiaGhczoxdiDU0A==
X-Authority-Analysis: v=2.4 cv=FesHAp+6 c=1 sm=1 tr=0 ts=6a0de062 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=1wzcjCcx2gfPYyxUMXwA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_092507_117614_37541503 
X-CRM114-Status: GOOD (  14.24  )
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

On Mon, May 18, 2026 at 10:47:16PM -0700, Qiang Yu wrote:
> Some QMP PCIe PHY hardware blocks can be split into multiple sub-PHYs
> under a single DT node, each requiring its own pipe clock registration and
> DT resource mapping. The current helpers are tightly coupled to a single
> qmp_pcie instance, which prevents reuse across sub-PHY instances.
> 
> Refactor __phy_pipe_clk_register() as a generic helper and reduce
> phy_pipe_clk_register() to a thin wrapper around it. Similarly, extract
> qmp_pcie_parse_dt_common() from qmp_pcie_parse_dt() to hold the register-
> mapping and pipe-clock setup that will be shared between sub-PHY instances,
> with pipe clock names parameterised per instance.
> 
> This is a preparatory step before adding multi-PHY support. No functional
> change for existing platforms.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 76 ++++++++++++++++++--------------
>  1 file changed, 44 insertions(+), 32 deletions(-)

I'd suggest splitting the Glymur PHY to a separate driver. Otherwise we
end up having too many single-platform, single-device specifics which
don't apply to other platforms.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

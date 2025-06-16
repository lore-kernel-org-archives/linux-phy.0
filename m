Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7AAC71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQ0coZS1YxBhEdB/pNMkzY9cgVWPYlVIjb0ds5Z7uSI=; b=KChImPlk867Cv0
	ILGQIIVkbDXtbYrPkdPD9kahi1CMLrpG9THzAgQVZ26nCj4hWbx+BD/JwhRzLZUOQhvQMlUgumoDh
	EDLPipccxfdx0nETR5C/qHoJqBS9SjZh8+uES0qRQLDt2sdmNXZ2Z12zxGt6VEheE1mmXhgFEXKtM
	+wV1P1nT7u5G2MSgqtn1JIRjg0ZNbzASiSKU+61y3TZskmYbKfNEHZeXrNikKTAnPDdMOBXeXAut4
	0QQrkLwEU/VQP2RZEWp0FzDHtP1d+HmDCnswZrYzGnAXOCPNeVhfp98Vhv9svXiEHk/8aWqydEFjy
	lN915NloKjaxuk2A4mWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8aP-00000004Ivq-0uPh;
	Mon, 16 Jun 2025 12:05:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7Rn-0000000482d-2Bgd
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 10:52:16 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8lh9B005078
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 10:52:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VUJEcgadRGVVdACDvLFJMjAg
	G3Ukslnrtn2VKYsQ5ic=; b=CqNOazR6EFXiLhiQXTxle3BZjNvSVwwrYcBO7n6J
	/V3alRKwFaJToxGdzCVZtH1dIhnevENrocahehzNH4Jp4P7y/EmCLjXxOFHAASbA
	WpFKmYF/XTXDh33wq26LSrU+vO01HjaomSPg9ITbVKqaYE1yNbZ/YV+uK59oYQj1
	oNdS0MBTV+f3Vh5VWB6eRYv+Fen/t6QkbD8CSpgEFkoK4VXnmEkQi066Q2bICyX8
	RaFDubkVFwfKwMp/3H+kvavxXbXp34rC+9ycm1VsYEF1yDOpnXYn+9tYh/DwHWTl
	tQvTsDbKLRv8YQG9V8zkVQAY+ZsJkgYswQtFBY74fo+CwA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ag230bt1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 10:52:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cd06c31ad6so795841185a.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 03:52:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750071134; x=1750675934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUJEcgadRGVVdACDvLFJMjAgG3Ukslnrtn2VKYsQ5ic=;
        b=CQwxJugCkgc5orAoc0WldXKMdIFAgyMlikvcrJrrtHACKO9wudUoEemeXm5SaFxM7B
         1+0NkVYZHq/YGZY3CXLZpxSB6vOIDwfego+WbtKG1LErhrbaMEV9uppT/vzB5NHXu7d1
         E+WzVbfvG5Iu/LX09Zf6aumku0DhLmiLQsCAlqlma3zrm03rbrSEQGKCCgbfzq+ELlVf
         by+slm6dDF0PoVxgBx/Yoq0kdNb4bcuHrx+3iPZWXuhfFZXiGj74x7GQsUyudFhdFS9u
         2rDa1id9dx+gQIgnBkRw2XpziViHwTXuZMUqXgArP2v3rqn8ltla8FG2RM4tSQOsWq/v
         qJUw==
X-Forwarded-Encrypted: i=1; AJvYcCXAtFrzgU10+cu4yxU60+b1WKtrpem0gAe7Q99rY6Cip7w9qdcEMcS6UQVVM32Luv/iJuYnW3BKtvw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPs49trk8Wc+HUud1RNWxpcNGnvnVmC9Zeb+3Zf7LCLXZUus1u
	aK3o+B8n7PGcHaPOzlz7DJlxrbUjGWN8MCQz1oA8BPicfvCY0LVgcxhVIpucs9YUg7dyzcHbnIC
	Ej7zI5qfFVP7BkcYvHL+5PTssvJ2oVStSHy/nzLV81+EGS/MljejGPrd+PLgdFRsRckk2
X-Gm-Gg: ASbGncujoEejxBeOqAhE3z/F02DVV9ttZSOj21YitD3nbh83XHGgmNNTv33xSzCDZMn
	70PKmO7Qd8Cc+cylk8a5SGpa5BRYQGGeKH8TQHAiurVQnsr1ZqSn1EdRmGjFCZ6xPwX6l0huIUZ
	vklwgwbeOuqNaIr6HUDmYx+RO8YdyirJYPBXPFq6AV9PKrrlVx8C67hQoSAblTQ4XV+TBtRXJz/
	xa4SuNykoO5NWxs5q4BtJS5tF85PaHvqmo+z7C62vHfJLBCNgY6OcS9+lwXUtVkPuLmvUvw3OB+
	o5q4MfhiLBePhUDXjp6HbOl5W3+LVRBqyzH1VIR0qoaywO5CKE/f6YMtTOzWu0NBbM/oZNnuPUt
	+mmWaXquGt+meUEwBL8Csk2eQ68Izld8+PN0=
X-Received: by 2002:a05:620a:319c:b0:7d3:89c7:684d with SMTP id af79cd13be357-7d3c68548b7mr1118616185a.20.1750071133736;
        Mon, 16 Jun 2025 03:52:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEepDi1ZYDSTtYKF0mLtAVvx1xpIfGtgjgZd2J70oP7izfYqJxqwXkDfhP4ZfXaSTlD+UbJKw==
X-Received: by 2002:a05:620a:319c:b0:7d3:89c7:684d with SMTP id af79cd13be357-7d3c68548b7mr1118613585a.20.1750071133304;
        Mon, 16 Jun 2025 03:52:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1ab3e7sm1517482e87.111.2025.06.16.03.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 03:52:12 -0700 (PDT)
Date: Mon, 16 Jun 2025 13:52:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO)
 configuration on SM8750
Message-ID: <azx5zo4rbhw434vyyunpjswtjfyr5notjd7glm2hvg3yertvzq@wcbrrmhstvlc>
References: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-ORIG-GUID: zXlyj7Jqie4iD3nZskBPSGD_5b3P89gL
X-Authority-Analysis: v=2.4 cv=edY9f6EH c=1 sm=1 tr=0 ts=684ff75e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=v-rge3Vw8ZcHLs8CdegA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA2NyBTYWx0ZWRfX9u+gy4T7gkDB
 vhbWram7K8Q+iVEjvOKKp0JzM8WA/l1xcy+rbBHlDROg7LkWGRda37cde0dWWIgzMyhBvDoNEoG
 9SMJOVdX8hZvDrpu/uGxmNu/cUoY6epgmD5dpCly+5X4tzX9BD9bdCzYle1JKwpTE7VgMBSJGIK
 L/wnsHuDqwZPnCxmOG8nbs47Imdhkxd/yO13yz3480wPcOL6mlFaepB6c6rFZWC65PU+3o9B3wg
 OoeLHVnJXPdNv/tGszBJSmTD81mZzDREk+TRHNHcpkb+EuJ/mW2EKW0Pluky0yvquS5HcRR0PKX
 zkdsOfAkVVmPJT9kGTm1BcdtwEbG7EwCQSanWUCdJ4s4OojGCdtGj5l+seeHMS2h0JU4cC+Rj7E
 TJS+0kcbgNWd4hkUXzlffHbYuQHaueErtluWdR2mcQmorRj7JRogZkU9oRYEfCxXMCGxez/4
X-Proofpoint-GUID: zXlyj7Jqie4iD3nZskBPSGD_5b3P89gL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_04,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 spamscore=0 bulkscore=0
 impostorscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999 malwarescore=0
 phishscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_035215_687226_C1D89DFD 
X-CRM114-Status: GOOD (  14.18  )
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

On Mon, Jun 16, 2025 at 08:25:42AM +0200, Krzysztof Kozlowski wrote:
> Add missing DP PHY status and VCO clock configuration registers to fix
> configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
> works on after-reset half of rate which is not enough for DP over USB to
> work as seen on logs:
> 
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11
> 
> Fixes: c4364048baf4 ("phy: qcom: qmp-combo: Add new PHY sequences for SM8750")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

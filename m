Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99561CCFA13
	for <linux-phy@archiver.kernel.org>; Sat,  8 Nov 2025 19:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkmC3p+DbM+/nZ8PLGDWvrGuZsl9Uts5fby5JTLZgbw=; b=dOwU7Ynx+Jbo6o
	X4FQFeXQ9vNmMNkWsyF6hsFnQ6/MKM4VNZebXKWcYscOXzNJmrGmGHToUi5txSFn1YrG7V7vNKVGZ
	r3iXalw11qp97nF/WcANtZ/AbNoZsiI+Ug+d5ggPYi3rvKNUBK36jKZjvpGiifP+5AY27Q/sE7l9Q
	dz1QJIRTZIwg+WPvI5AHFB4xI9p1VZFOWDtUwyzJJJnQfMFDsv8Yghu0vkYO8kg3/8PV3I+bW36V4
	SJRsnxGCdUmnyXup+z6+/a5LM6ZW8NeL9nigx2wpNeO+8SqPFeLCwo5n67lf3klbTSVlLI9MBYity
	7l3bZs5MBg6YXd+8cK3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHot5-00000003Pnk-0fS1;
	Sat, 08 Nov 2025 19:46:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHot1-00000003Pmf-3TIm
	for linux-phy@lists.infradead.org;
	Sat, 08 Nov 2025 19:46:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A88PUC51273118
	for <linux-phy@lists.infradead.org>; Sat, 8 Nov 2025 19:46:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=N5kLP8hDSeanKiERqglKodoR
	Cnx8rVn5yjp6JtXx5aQ=; b=pIEl9Zrd6spWFEWF0oEEF6TNGZQW0DzqEgEONpBZ
	0AhHTZBrEOrCanWbOIRRceZHDYSDpxUzTlMpU1tQ1nExMM83HVfkxCegwwjS8dh1
	1ArQelJGO6WJbYqvWVTWBd/AO4yniwG9LIQCdUet8a8luT8wwdq+6dTxRUtmXKRl
	3iWhjTZ/d0Zo+jbP8F61yRSJ2kEgP8TwNrva3LEKPfETvH7vYBt3HkVsTsmGil16
	HHKWeviIjiod0t5o54aWRjHJC8FiZnZ0FFm2LGMVPQY7SS45Pxgu1Q7V5/azEIX6
	4pZZNRnF/CkyG+Vyu8hV03U+YCo0EfzYMKhngr5xSB0Hkw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xw6h3d6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Nov 2025 19:46:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22d590227so197912985a.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Nov 2025 11:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762631170; x=1763235970; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N5kLP8hDSeanKiERqglKodoRCnx8rVn5yjp6JtXx5aQ=;
        b=jOUF96LK0bMA2K27pOVif+/USU64NDXQEja+ZB7aFZMeZtu0UxyhIz27O/lxmyGvfc
         rOOLtT9q7Cy9YHzdD1PrzyguuLhDSbBLjwxz98Ev4SqbY/z5uvvxUrYUYJRr3Dl8R/wb
         K5roYWABdakOJb85ipnJ4dtNNRP1RvozmP7OLcEA1aBqOXq6BFggZtpbxtHqTa5+zPCB
         gpRUKDFqqXRcDPuzgPyxzvoxQzK/Du2jURLRUw9CF1kK25w22R2i94N+3bHc4XxKxFRx
         QOAtTQfm3nnA56VbknJ1Wai+e/jlCAtRIRbhi3kRh6MpZ4KWnq/4WtMSDvlVI47LYHRV
         BUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762631170; x=1763235970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5kLP8hDSeanKiERqglKodoRCnx8rVn5yjp6JtXx5aQ=;
        b=mF+G0RChnXXPLi9ZtLokeTOI0/lheLfE/l6Y7CsipF0NZKsgkun6YKQ20gpXroOj5L
         C1cio8MEfLLFc6+35i1ZgEhax8+I2N/l57Dk55zqRcUK74vV89NC4AcaOQHM2vM06ovF
         vW9VLPIRV3pGbOxS4x0TqkjxMwI8Ew0Z49/hAkyqaRsQzK6lYv543b+emCws7CdaXS2l
         G17M4erpaBZoxXHrRBB0WRysQKZ2Ol98dlqBiQ/rJfZSKt6rcP7EXMmNTOBQ52RFyEUs
         05EQeci73ic6rF6DqGqnLZysZv4NwSyP/GdjFGww3pbYscuBReBOHxmbReMOyBnnwff7
         EviQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbWzWy89veYpnGvECYe/gBFMzucqQJOq5Slk2bss7FW6yZl529N7E50AbCI6oXdZuK7EADUIqX//s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS1z8VIBlJgJYic+LJDniG3H/IMxhVFVJmA4Fcb+ACCerQbmM2
	Db5Bfd7qn5Pd+Ls/nOLIYAYe7ehG/DEW/IDXgxMy3acrAytlHTHhCJQB3q0Cb/Qp3EoCYMLK9y9
	1PruQpZ4JvJ1RepOUmyzA8zTRDfmkUbc8qFpYtJqFVRztjuAN2St3RXVLPD44UZbUYatL
X-Gm-Gg: ASbGncticKl1S/Uu1oCwpYECMBahO4B8tjqZ1Mca1jmCcvA9iA02jbwDJqo243+FK1i
	KBfT1hx1cmLmg9OmjhxJ4WiFWssesqOGo/LTCSNyThf8IWwr6KNsrVw3yzlaUpblo8yPlc/hHWw
	dq9o7bKNhBGqF8ezTjnIqMtKUJrSTJ8tRCLPbXqHpUOYvMp437MjLWLntO1N3rwuh8DsgK95srn
	q6NFQtcEOgL8L1DqaiLVxAMnIAT2oVZGvvi9JDon2UIdN+f1fS8SVoQqJQAEqIYKuM8Bj09103d
	/mGF/jBZp8fnPJLVC9grax4onys/qO8lmgffMonQCWV9k720kfEwfYq2rHEHzr0qDMwfalG7zoq
	U4kDTsVkXJch3jiBxXruN+Xi90X0k/64ikWg3s0rPcIO5KabFRAZpJAhR7GnbR2NNc+nmerdhxK
	jtG5aQ/NdduCnF
X-Received: by 2002:a05:622a:286:b0:4c0:5e82:86d3 with SMTP id d75a77b69052e-4eda4e6ec21mr42626831cf.1.1762631170003;
        Sat, 08 Nov 2025 11:46:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxWcQNlieXpFs0/FgNMHfMIB0ifmLg8ipoQ00ZlH0+sZ5XazDWrKkbEsLsyh7hlUoYpPIS3g==
X-Received: by 2002:a05:622a:286:b0:4c0:5e82:86d3 with SMTP id d75a77b69052e-4eda4e6ec21mr42626511cf.1.1762631169567;
        Sat, 08 Nov 2025 11:46:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a840e20sm2422937e87.60.2025.11.08.11.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 11:46:08 -0800 (PST)
Date: Sat, 8 Nov 2025 21:46:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v14 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1
 interface
Message-ID: <3ero2b5vzlyncubdbiknkimytvuelashqn62x5bg2x2kx66ml4@hmmzxt5eiip6>
References: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
 <20251024095609.48096-6-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024095609.48096-6-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDE2MSBTYWx0ZWRfXxcqFUIp6jSv+
 oCkoYxozi6savoQ030DZ+9sgomAsWkII55H8Yx2znMqZnNyVeWr/DgH4S8QQalvynJjvWDXDTzb
 S3xM88D6kufgEoXVlKy3ggQv45qn/8HPRBfs4oAhaxmu8DOSry4KUwlEYgrnYnNX4BiKBEVVZCH
 fA8hlx/tS5kvhXpxOtDv8iqXjqvFFdTqG2TVMPbYgIhb26461Wql/34BMq5ldxfP0jtW7OTfKt0
 dpGvJcduyULZ1hP9YKYuChuJGI2duAnSrzWdXQt5zY0j+/95lynxGxaR1q0vsDEv9g3q6wGATzj
 5buygZOy084IxjkGglYoMJKIGNQiiyFaDbTCraYPgs1d4A0js4ljvUK+u4cld9Y+ReNRKzCtecj
 sENvFglwzJ6pv6D7nYe4XNw7H65tPw==
X-Proofpoint-ORIG-GUID: OkK-ZUVU4dkDZ5YADSPuEv8n00vQGh2c
X-Authority-Analysis: v=2.4 cv=cpmWUl4i c=1 sm=1 tr=0 ts=690f9e03 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=wKY8r5YjdiK6585sAzsA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: OkK-ZUVU4dkDZ5YADSPuEv8n00vQGh2c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511080161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251108_114611_880544_69C1BDC4 
X-CRM114-Status: GOOD (  11.87  )
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

On Fri, Oct 24, 2025 at 05:56:09PM +0800, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc for qcs8300-ride platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> +
> +   pcie1_default_state: pcie1-default-state {

Incorrect indentation. Otherwise, looks good to me.

With this fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27699606A331
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 14:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j+bBjooS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FVHWF99a;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=if4aYO6j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=T+eEolaQlR5nziTae4Nir2L/zIZJU6qQ6zH2rApUKJ8=; b=j+bBjooSnBsPBW0baxqNu3JQ0o
	ML7bwZMItild95Hpw+nZNJ/MrqBFGq5nzMulNm4wdx93vjfQ8NzjVXkVx0p4JVwONasSueRNKtQsp
	EE+PC+bmP+bNIC3v+5VQYMbSdiRHPb5Tsnz/lEN5oQ/oFLIzcIyEwiq7xIKyr+Zmi1iwJOCxjbs6N
	aDXvahaRdTjPQSJMeUyHDDOG3V/06TIVYbaUj6qkPBl4iKJVUCpMmlWfh2WWHL9rW7rmr+y3RYUa1
	vKknO/atX/F96/Ck/FfPsxwMx2TX4ppSa0ZdHtwSGD/bTwb3kotsbFGK0LIbI5LsJpqIPC39v4oI0
	djkgiF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4mj-00000007Dof-2cm0;
	Wed, 28 Oct 2026 14:37:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4mg-00000007Do5-3Z1U
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 14:37:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBekZp4156060
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:37:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3DAoL+yUUSVahEuOLyD24m88+Cfx9LZgZjspyLIndDY=; b=FVHWF99am9gDr43l
	/MBzYTpcJkCmaJmT/GUjkKS5+m8Z6Hcs/5JOnOZZKLpOHZlL+WSrwBLJtrVcyTP8
	PgJpYWqEOMGojhA2Ya+g8bpbZyfoHdbaRByTv6JcFoPQQMfAmxl8lD9dGjlsWd3d
	gX70KW7uy6zlEmverd/ApanB3UsFStWYZKR9q9GNusuiW6l+L137WR4G5QLqogdt
	TRchHeWnnDaJ4IqT0frQqv0zbXG/bS9R6wvqBIprT+Jk/0g9FVc84whZuYe9y8g2
	sLsbeoaXqP1QUiAJcYKuzc71wbUcvlsjvI9a/1k1zct4vLF1soVgFPE0k7kxhf0v
	Z3USAg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdsp1ahr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:37:45 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5eae4d7ebd2so99449e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 07:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793198265; x=1793803065; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3DAoL+yUUSVahEuOLyD24m88+Cfx9LZgZjspyLIndDY=;
        b=if4aYO6j9svw8oeu7AYBG2dCBU7RW8NCyVBsYSfFN3twr+9u/K1ty2AhWxvBiWr5kX
         CRAjda5fcsRkblKAdpQhwQdEwtfz8/SEw6jMU9ickVW9p31aHCgZCy1CQ/g7Unp5QitD
         mos0OownMTCIbLuYowdnjBPg0+OB+6FXDNwJIUQ8ZD447GZ+9jEkCbp1AtfP2YtOBdSK
         QP+bHmAz07DsQY6VaunxH+hbQdcbZdOaVjYSl88DDtFANhU0W7SnRWqAtX2At2o2cKha
         2SB5sTYYTJFV5RYqkfzm6Gv/RBPmbhrfNjhRr2yJjmPfzx+NDFzSSs766t8QQx5yC1d4
         pJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793198265; x=1793803065;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3DAoL+yUUSVahEuOLyD24m88+Cfx9LZgZjspyLIndDY=;
        b=nEP1YyH5Dy4m9qbQQfpRwABySm9oZBB2IcvZUSfmDWuI7xDzoLuoD7bxbSBvvFWzu9
         psMzcHsYrzmqaF9hvm4v04JuGqlsU/ridQnFx8BlbC27W81t60Q93yQGteNuXRcQL0qg
         0r6WxkYbWOJujoKYrYiFcXLQ0XKEiHpF0YGlBr7VKqpYjsNp33LZFSB+YVts6c7ou1Y4
         k/SG32AFQblU/MzvyPYutCDTJ+pV0ubbp+fmjDVNwhtQgMGpikejAwmrJ/Cg7D/QZBfd
         WTf+L6Z6mkxqY8lCoFt3TJmpBHB+F/Gc+lDv5xHpKKle5uEH8cZem9Ke9ZTLT5LxQAO7
         +4ZQ==
X-Forwarded-Encrypted: i=1; AKwUvBwQzuzM0BxQTy8MkBcgB8sKbH0T3Nh8uC6GU/EMQaXj5+OE3zgA13xag3k4XWv3EpfDqgNoEeDDLHA=@lists.infradead.org
X-Gm-Message-State: AFq9FYJus/7X5RGyeg73w/OU8P2j/qkNDNale6Zr4Q9oS60gZr5O0i8e
	NioHi/zjc1d0eJGFliM4NuMbQCM14f7oqQb/XRfnCKkfB173yfsZYpfQR6L3PO5Tjtq/lETaSyg
	ki19h11m5ihdn0g84YRKvN0xO8alU1Xe4SfEodb4t+07GtBP6bMx7ZFgfDnCwNwp0QDhi
X-Gm-Gg: AYBFou35bC2QRGKUz3XhmrQwzruv5UmxyuV1aVt+AXMC3VKEcuvBKI4DnijQfZ1nm97
	wiFqiR3/v90DLmODekTZAXdSrvsOiVWQtt6aJXi4jWEbGDUld01i4smLdbxghyYVb/O7V/xZ1ne
	AlrKzQQSsMdhME/Z3K+bmzO2ChIR81Kx4xScULfiq9HDm4zCipU++uibe3+vLBqMt4EDEIDXoaI
	3sHBDzh7kVwZ2zvGiPUUzvaRZ1oskB2oRqlOlPFMyhUrj9C4GQbRu17KK82AL7aWTrDYg9grFOA
	BsxURTA3WvA8pgTh0Bhljf4qXEIgo9ReosaFBfb9qIc7lZ7/FdW2ouykJwC166MtzR6mEggGFpC
	tuLxqFYdQ4hbRLgtMHfOPHzcuNiCx+HOWbNxuw9HPYOgxiJAZTIqX6lGq3WZNMV0pKBgvAAk=
X-Received: by 2002:ac5:cd5a:0:b0:5e9:2e3c:2f5 with SMTP id 71dfb90a1353d-5ec4cae6182mr1211480e0c.2.1793198265198;
        Wed, 28 Oct 2026 07:37:45 -0700 (PDT)
X-Received: by 2002:ac5:cd5a:0:b0:5e9:2e3c:2f5 with SMTP id 71dfb90a1353d-5ec4cae6182mr1211449e0c.2.1793198264694;
        Wed, 28 Oct 2026 07:37:44 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd4e784esm601408766b.19.2026.10.28.07.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 07:37:43 -0700 (PDT)
Message-ID: <ded7f87c-74d5-423f-acd9-efa83a472c2b@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:37:40 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-pcie: Add qref and refgen regulator
 vote for QCS8300 and SA8775p PHY
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: --Xp5lHIZ1iFFyYWXe5L7ENR54NqxZEc
X-Proofpoint-ORIG-GUID: --Xp5lHIZ1iFFyYWXe5L7ENR54NqxZEc
X-Authority-Analysis: v=2.4 cv=Cssq4X4D c=1 sm=1 tr=0 ts=6ae208b9 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=t5PPnQQkLeIUCWTc9swA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfX/WxW+Na2Je5O
 ftZAEdzVD4H2EKnHFPU6LgDD0hUV4k4Jb0sR7w48LC0sJVjniZMOUmq3DWF2wSJQTxqTyDuNKwF
 v1EVDWs41gCpAr77CQFkO/DGKB6LVlXdqg3ofXhWifVImLp5nQ75r6Dk5+wyP0p+aEvZo91+iaz
 J7s7DdXzyLOS9Te4nsIJ3gt0ZMXCR1rie0SbmC1/0PLvzs5GjahJeNMXF9GhchqRCxjKSq9rm8H
 WIi5Sr13SWGQCbumP6Z65OLzuh0aCKgdlOU4Ek84ka+vUAoAdYv8eLFz5ey61g0CLxL4YtAPo8Z
 qylMZBpbUodheQx0w85fHOsoGhRq40L3xU72O8zTvaXeoSM65fhHJqrlfY8qS/Ilvq+Ai4v3wi6
 +IRvC6hM0mMZiyN9485HMirXbiqkzEb7psI/curYxQrv/8iY2KZPnGabDzC2VPNAWmVZo+YSomT
 8jLDRow5Ca9fjfpZjWA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfX1X3I8YN93yjm
 GslvDblZVoq5mEIV7nSPGQjuRQiqJzK7Sq4leI5LPIIFtRluOXcW0jvxyUSC7u3zOm2vM30W+9x
 p2IgiwSwT617a/K72KlSnMcdSWSJyHU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_073747_011506_7D05090A 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/16/26 12:20 PM, Ziyue Zhang wrote:
> Add a new sa8775p_qmp_phy_vreg_l that includes vdda-phy, vdda-pll,
> vdda-qref, vdda-refgen and refgen supplies, and use it for QCS8300
> and SA8775p PCIe PHY configurations. This avoids modifying
> sm8550_qmp_phy_vreg_l and breaking SM8550 and SM8650.
> 
> These supplies were missing from the original driver, which was found
> to be the root cause of occasional system crashes observed on QCS8300
> and SA8775p platforms. Without voting for these supplies, the PCIe PHY
> lacks stable reference clock and voltage, so the PHY never becomes
> ready and initialization times out:
> 
>   [    7.303119] qcom-qmp-pcie-phy 1c04000.phy: phy initialization timed-out
>   [    7.309948] phy phy-1c04000.phy.0: phy poweron failed --> -110
> 
> Note that due to a hardware issue, QREF actually depends on refgen3
> rather than refgen2 as documented; refgen3 is therefore voted manually
> via the refgen supply as a workaround.
> 
> Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
> Fixes: ebf198f17b5a ("phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index da83358c97ea..ab81c6e584a8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -4094,6 +4094,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
>  	"vdda-phy", "vdda-pll", "vdda-qref",
>  };
>  
> +static const char * const sa8775p_qmp_phy_vreg_l[] = {
> +	"vdda-phy", "vdda-pll", "vdda-qref", "vdda-refgen", "refgen",
> +};

I think we could grab them unconditionally, as QREF/REFGEN appears
on most/all SoCs (perhaps with regulator_optional_get so that we
defer the correctness of this to dt-bindings for any specific
platform)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8911AEDF021
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 03:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bcn40t2y+/H6GS9SGbsofbjhrLxHXaNxvf0UQXWq7s=; b=rdStOcPoYNavAB
	izVZhNP8SQcdxdKXxHTepr+Viy+svYNt2Vr5mwTVEIAqB3a3P/kdpT4mCSziICu9AUg/sW2xUwH9w
	xLxZQtFC7lvmeWySAkXpIMyPx6LjiBmtqLS1urRBNg0S06ivu70ZC9oUDwuK+P3P9Blfiv0OkRlPc
	GGNygp9PTyNEWW2Qb2vRZu19mcawrrfIzhxksTCYQoCJuNBAXl4JE1tLFfGivM5Jv8ZEGjn8qehXc
	p06TnYMMVtj8TziOkoD4YG9KTaZsvZfzSxZGhZg9Hl+wxTLUBLJpNDbfOJlYHQW9lz1VJ5VSN11KW
	dFIey1IwQ99+LN4qEp4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqNRQ-00000001bkf-0BI6;
	Thu, 12 Feb 2026 03:32:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqNRN-00000001bkG-1KhR
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 03:32:30 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RsTZ3319715
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 03:32:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cHtWPqb4Hy0L77cGc2/r8PoW
	7F4JUPzoJ7lU0l5OE/4=; b=J1hnnNma7FiWyfDEXaycQnSiRJUGvFNBDJkfvK6A
	AM9EbTWuCvmGEGNwuIwakYqXPXqaoij7hqJjOW1NE+Kg5q7jKohy12lDIyDoohQ4
	gKE+SxCVPTNpNNdURquJmTmGTUu4qX5sImbcefuEVN0CtZPN3yFjGriKWLOBIYON
	B2kFssBnAFH88gGgu98OG+PGKfkgJL4fk++dHgmgq7SwrV2UeplO0gzpSau4ACsU
	iyVrINXxa8w5EIj9QzBPwO1pGr+Z2uRMFlzt/Af+lbCPtnxIQiWA1ClgIAVu/kd/
	UdBQjWfUTUkyhP5n1LPif3UK2udur1jrCoy119CPKhuebw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8wc4ss3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 03:32:27 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124a95b6f61so20536145c88.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 19:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770867146; x=1771471946; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cHtWPqb4Hy0L77cGc2/r8PoW7F4JUPzoJ7lU0l5OE/4=;
        b=RT4BSlirqfJRUwPELb9Y8RJzTwSfKagndwwhup2IfALR3SlHnf4XwSsE9Ai2V+Qv88
         Di65z+XduxeXHVCBlE0ueKL8sNrVqV4K3R+VZ/5yEMI0ESrcpxo1s4COwfwIP7MQznEQ
         0wnGoZbuMkyZTNlS4fYE+qM3AYF3P1cz7z66g1Daz0noArJgTfD99hz0oJi8KVSvOQfv
         78Kshe9xkp3gbcglzg+Z4PF2hGBVXQGyy7GkD5mysvLWIWOcDRqxphm+l/IH6YbeIt3f
         607gnbPfgnv3YZ63ELaPgTeEOx6dmtjXynUoTPxeLzan+6zSTIdU8b4soenx7KSKwJyO
         rooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770867146; x=1771471946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cHtWPqb4Hy0L77cGc2/r8PoW7F4JUPzoJ7lU0l5OE/4=;
        b=VckoORQZNch95Aet9cbyMM5nWnz4zVVDqKDsZXcSLKJMs8j3bJfm6KZxjsdJXXtBKV
         CvbfsrPQ/k+FomNgN97s1YN439eotzlXySGG5SYCZsAf5x00AGUOtZa9yeKPQvHCRqWr
         PGBJqmhSKfSTGRpipMw0C7iT5+zqpNyOG5dJz+4X9KHJCLP7BUBd1QiDz6sKu3e/hlIf
         HlSO4FC0fjYrMQWlsbjpeVQGKbuA4CGeMi6WNDxYmQHfEdXpze0nFpmz2u4b5Nm+mPNb
         TQKSTiVnSF0fJRDaPHzta7DL4yABqEqc9FgRSD3eKRasVS3MICpDochgzxO0IqUWgCYJ
         bMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVeoZ1eNlhD1IHHRREGVH+CS9WR+lAV9cWboUO2Pds1kSj0G1sB030E0VFnG9Wy7483zNwTnqECxU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1yyq+CEtLgJRcEpNJQRSQHvUIV9cX/jn4zCC/1+v13ETpOiuj
	3LQ8AW6DPRQSfhmRQ82JplLv6zeGdr3pl8UsnxAe+MKOI33TbVk3KzUgSORzdySmO5HKxzvtN1i
	v0Wiz8wumAlP9fJenPutc32OljMYXAQinnNlXpiwYEtvCUM8XZ/arsHijUx4/5eKxUTTnSqZhK8
	iS
X-Gm-Gg: AZuq6aJBxlXOZHZXwfPgubMNzT/hC8qkoNq3Zz/eTtHItNeu1FXk3wvxf792VYxFdzv
	ox2sE7b+SBnyZml1w00GHRtLQ+Gp1jpAUDH+SKtERdVQSwNFkASod16vp2ISOoNpAqde9EjP9ZQ
	+vlq+dNM4aXf1NKdFLsMR+xX60Cq0JfmUnSE8/0NULXdEVaypKq7jNChAnHUZrTMhMBQ9C7jQrO
	L0ko2ejt2/Wb6Lon6G8NvLlPQIkSeWTt4xQ/Qyk31M+jeW9VQPjjgikLfjMjWlIMKlPCu8aN+OW
	+Ok3MTc+JbSosvJhSfdCYr/NyPk/mkV6fio3NJA6zBntjP0HfgEQgCI7joPgXfiGq61IzAxDef3
	Ef9/HbzpK/ItD9tEbF1u5CwWO9rjanvDTqS+ZmOLhvgQ3yRHN+oBtRS3STR35PFztVlC3
X-Received: by 2002:a05:7022:eace:b0:124:9dea:188d with SMTP id a92af1059eb24-1273056bc8bmr337347c88.30.1770867145963;
        Wed, 11 Feb 2026 19:32:25 -0800 (PST)
X-Received: by 2002:a05:7022:eace:b0:124:9dea:188d with SMTP id a92af1059eb24-1273056bc8bmr337338c88.30.1770867145477;
        Wed, 11 Feb 2026 19:32:25 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f3279sm2891880c88.13.2026.02.11.19.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 19:32:25 -0800 (PST)
Date: Wed, 11 Feb 2026 19:32:23 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260209-magic-conscious-seahorse-b81c8b@quoll>
X-Proofpoint-ORIG-GUID: E2dBRwjqa_4daBn6srQOnlVK61ngOGZ0
X-Authority-Analysis: v=2.4 cv=NrLcssdJ c=1 sm=1 tr=0 ts=698d49cb cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Gz7ZAXQ6loew5yJunv8A:9 a=CjuIK1q_8ugA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDAyMyBTYWx0ZWRfX4B5d4HoHXAv7
 f2Q1lIWLtiwsFwfZmW5OuNo+hkEm+p75jMyh9y+vWNunKDGuFMeXPPTm+OLPntveXBneZORVZ02
 OLmFaWqKtxJ8RbC6Tc7JyesDnY+8kfqOBp4ByFCJ6mtTWr0H/j14Nc9aZK/Cwvt5/jkScLqrlvH
 m20zCX+lj1tz265XYnoBWNjeyXoFMza3VTVNpLadsUic558mRCy4uoxUdrDSJrmGD2eR9203QZm
 Jei2nEzyJA8JUxosatwbE2Enw+xVR0rnieVlMnXOh04yul9qwjrdppOZw1IcuctTGGvn9UKr+IX
 dsYImelHfDi4N0m59n68YIJrHbuCNbbZs5YCvRKudQaaRUOS+ZhlKGUBRGoLC7iX6VZwX+RClVY
 bPKuIJMiwDdJEz/aUQm8WJNH29w7fzooVjVWTO4VKuOTpnNpo3kC6qR2/xwqsCvSh91nHUTmCsj
 0X12c7PrmYiC/Rt/2Rg==
X-Proofpoint-GUID: E2dBRwjqa_4daBn6srQOnlVK61ngOGZ0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_01,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_193229_496059_353D9194 
X-CRM114-Status: GOOD (  23.87  )
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

On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > refgen. The refgen itself requires two separate power supplies:
> > vdda-refgen0p9 and vdda-refgen1p2.
> > 
> > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> 
> How does the driver matter for the bindings? If I add dedicated driver
> for refgen, then I change the bindings?

Yeah, I know that dt-bindings should describe hardware, not software. But
what I meant to say is that the refgen is different from qref which is
controlled via TCSR registers and its LDOs are requested to vote in
tcsrcc driver. The refgen doesn't required register setting and it doesn't
have dedicated driver, so we vote its LDOs in phy driver. I will avoid
this statement in next version.

> 
> There is qcom,sc8280xp-refgen-regulator so why there cannot be
> qcom,x1e-refgen-regulator?

I think we can and it seems better because the refgen for pcie phy also
supplies reference voltage to other modules like usb. But I checked the
qcom-refgen-regulator.c, it contains some register settings and there is
no LDOs voting. I'm not sure what does those register do, maybe Konrad
can provide some backgroud. But on Glymur, we only need to vote LDOs. So
what if we use a fixed regulator in the device tree to represent refgen?
We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
PHY would just need one refgen supply reference.

- Qiang Yu
> 
> 
> > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > conditional schema to restrict these properties to only Glymur PCIe QMP
> > PHYs.
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

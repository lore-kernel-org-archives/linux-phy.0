Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E58C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 14:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bK4vJKFfTiaPYgKZ+fWc2J3dDZiOsgtiBq66WfOdueU=; b=bY4hgr5qU9+e2G
	upbmxKg2E/THIWr3Gs/EdA8bSqeHib29ZPo1slYhF5AW+0hI5G2c0n7L58o9AcxBeI8YU5GX3ICzk
	gdYqKTQ2e5fH9yohY6/pnDFqY46xto1ZQII2pZsr/6zv1gXc5I05/7tG3oNW2rg9Ut/FV5xHZ9sfE
	/Rpy/wdrEEsA0fBjfm6nny7D0L+iurb0bSivwx2p+JUO/bhoC8oD2KL4deCOjXmsjSU9m/PBQI/Js
	VInawvCHhsh5h1G2podrqmuJ7nY+qTnrbQxFoLtLtRMLo6tkOxq+qzOb8PnxOs2FqW/7tCdFxqWZA
	NTnw6v2QpNgKaFI+cLmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woMbz-000000034Rw-2oM1;
	Mon, 27 Jul 2026 14:47:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woMbx-000000034R6-0p9P
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 14:47:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66RDlYLA855735
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B3requD4IAQNXc5E2nRkD8aS/Y4Rit+KA9DGttDek/U=; b=SUHR2G7WyeYlRs/N
	i4tIA7dNcavko6rq+jD9hZSjYgVa7ATMqsUANEhi0rQay9ruucByCUtamjl7/AKh
	4C0RCJv9c7Cx6wHPh2bMoz2SbVpp4gOAm7jd4ugwbNsY8Igx8d+yKL/mjdglNlr3
	PDKIEZC9lCDPWO3+HxzzTzf9UWC8tHteaxZtc/voKB2amKnaglZpEu62Gs1SZgTt
	fbv+Gx16xqfW4Pnhf+egZ97LaUwj4fYXZ6GC+JtnCv23Ye5+J22xIfo6pFySAFs2
	drZqM/WuoIxCMGc4Nn2Z8V58uxTsJMxkvVtZfNlB/Y4ZYypwSDCH86V+GPeycfVy
	H01DOg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fny9wjfqb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:47:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92eebb130dcso12167085a.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 07:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785163640; x=1785768440; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B3requD4IAQNXc5E2nRkD8aS/Y4Rit+KA9DGttDek/U=;
        b=YarE35kaE6DTFHqK2ieTnC3eHwQ1GEBM9j7Ao81vzGrXXMfQG8IZyjvx4/PDDWzK2F
         OYXA7/ghRpgXMYio0jeV3iLVsfb9mf9Tf06pQ9XGT8cSi/jGgsG1M1Mxz/UMEQSO63l6
         6WQfLF0wK7q7fqTwf+zBedFWpHgxM2P6pMx4kR3+/jPcilOF1PqJkt4JyT0FlJMOLkXG
         trRMxCMhp2SMYUNsG/xUKHXdEYlmV3m6HufYKYE3Aww0/CBQh8CXlQyNV30LfBSpe4Q6
         elm6il0uE6EAZ4fJdEq4TApwKklTG64gEq9wF1vTACsRQ+kHXkTguSZSnrZo8WI6kG40
         iXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785163640; x=1785768440;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B3requD4IAQNXc5E2nRkD8aS/Y4Rit+KA9DGttDek/U=;
        b=jUtyPFlNmGH+ZrXFlG3nRiOoEbMLTWoQCzOR/jNwOYlzvtFaYT7UULUNnC9ipW+3z0
         P731elAtLt78rGGjPaT0mUc1+4wIFMNmg8PNU5MR+rTfYwAc/PQTq3BZVKhj3dlsyInN
         TWERP2WZgjx7S3PgY3wsX62CFdvU3PzLVe5OJ56FICgpklkjzCyfNTLxPM74s8gc6Q74
         NiAw/BNRalt/aS9l27X4hd0hvXwQtPlqbT3ku0SFbdksjSxT1OFMlcFitoK6RedQxMqd
         1mT/7k/Cb/ZiVq7Thnyn0mMP+tkJqMv375AmYpqvPzWNds6X9lSoAO1D0gi/9Qm5Uf3q
         sh5g==
X-Forwarded-Encrypted: i=1; AHgh+RoFHOnTG3u8nGkrfkQAU/BKRWUsl+hAgLt4gtz8UKrTfzzKJaoRA6/70eH13MJidb+codIxsWoK7WE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLgzssIp1+/9VPIbOJEeWa7kvp1nYYy82Ntqij4k/Cz4geBKkq
	go0ur647jY2/VcSaxTe7kaqxWLuVzFlMl/lzwGvwHMm3fGBa5dj8bv0hXObgjZ1FAij6QI9062p
	nlHqVWlx/96XqL6L0Tph/uDcao3kbQl8SG5M9+eStW8TzdZ1weS6KYQM5RP7Ihaturhfp
X-Gm-Gg: AR+sD132iw5404ol+2kNP9ki5hK42ag6eUQ1aaHFwzbqFEnYE/emaJnrWqiy3WuEuvh
	+8pNsbrHwVlQoC5h0SRDFJlRfDBXftmLIDwEUjDPjxys6tbn9klZt40lhy7tMibCKA1qiD/pPWE
	Ix1/LW16bBapLE/si83Bi7q1jRBHAGpmiiecP+iu261qGfN06JxR1C7K2vlAuthYlj0WqaxwIW5
	zCxhdcz6qetr2zZ9FJrYFxteY21VWDukyODto/yNGaw5Fro2RgK9eNDAq0F1l622vP/DiSder/r
	zcImpu7S2djl4YU9SqOG9emSBT53P2R0J1NY/jMmqUgfOUqTKUhe4abwy7aR3bW5QUZ+FOvhLMM
	ahIRHCBbzRNbbVcSgJTVAsJek
X-Received: by 2002:a05:620a:a493:b0:918:588c:d095 with SMTP id af79cd13be357-932fc0eefe6mr37201185a.8.1785163639703;
        Mon, 27 Jul 2026 07:47:19 -0700 (PDT)
X-Received: by 2002:a05:620a:a493:b0:918:588c:d095 with SMTP id af79cd13be357-932fc0eefe6mr37197985a.8.1785163639289;
        Mon, 27 Jul 2026 07:47:19 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39f2217313csm13939121fa.7.2026.07.27.07.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 07:47:18 -0700 (PDT)
Message-ID: <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
Date: Mon, 27 Jul 2026 16:47:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDEzOSBTYWx0ZWRfX6Wb4qaCjQL1S
 IV5CAvLkjeeXgO9n1mrMu4Afi1HWOo9ezMu3eRng/h/seDYCnCA7GUdDvBEsnVYropiLoy2Yo2J
 ik7ZOtLzuqdDA3k3mni0lcmQpqF5L45ffN1YotoC+eYhOdzJaWvM4EUYoSVbt/czlF0I5K4EMS2
 Ewq9n6rQ9Od3uLkbaq0KF2WQyttzs5MdANb/jzbNY5qzkNRCpLSSYPY0womHj9ZbFtzpakvf1KS
 2eCz1D4CvRxi/YFDHYEUo+S9/yRjlMYxdwRxZ8ITW9KHahCbhepYUVXLkAvsn13SVwEbl8bGlV0
 xb1yZVsVglcrMgQPZKi/X2FgiugbNe9THz6Zn1pCgC6iZsM7ketbbptK9DS6QBq9xpeCCqB8nLO
 RhTTNOjLqfXRgQyYniQYoZRCj3rzTvi320+e4ZcBLzwqieQpu7/XhzRmjVzcHAjM4hQzPP9QOsW
 x8y9FXdTuBK2dvSSm+A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDEzOSBTYWx0ZWRfX3cICAr+r4Ud1
 qzvp6r8yx2/SYiYKNJT4GsXcoObOgxUGaCtTPWBZPNYQUxez/J5MYPiWcNsAt9SLYat5Iqp7CuV
 onTYq5j/brPwW+djSJwChQq6ZimTnYU=
X-Proofpoint-ORIG-GUID: z6gMLs6z7KuQyJSz3ngSbBsWazzN7hOC
X-Authority-Analysis: v=2.4 cv=E4b9Y6dl c=1 sm=1 tr=0 ts=6a676f78 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=z9rpH-K2X6tSt-NJzkgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: z6gMLs6z7KuQyJSz3ngSbBsWazzN7hOC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_04,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_074721_564970_BB529EEE 
X-CRM114-Status: GOOD (  13.79  )
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

On 7/24/26 12:01 PM, Qiang Yu wrote:
> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 6125617de82a..0aae613a33ad 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -28,3 +28,11 @@ &mdss_dp1 {
>  &mdss_dp1_out {
>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>  };
> +
> +&pcie3_phy {
> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> +
> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;

I'm guessing you also meant to enable it here

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

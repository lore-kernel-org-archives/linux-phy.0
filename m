Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E9BC53219
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 15:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DS8URwafEBjJsydto68WYMcMpE56/XcAyAUTjbFdFVI=; b=VU9kYnYfZ7x1/b
	8rvMxRvSTkXTUmJ5wc/kpMcpUzespuE5RSv6vhUirhVilf7RT6pKe29MebVRfoSkdUYdDTmwNMmcH
	ZQ2wx6U6NUSSRZFV8IqEDnuJGlToNXoQW7ntuwKzQnfSfsLlgj7TuPw/E/Mh8y5qbFkuBZRJ2wdbc
	s9P+fcGhp2WuZSa76WN0PpjC21sJkPzpyv7t4wruXAWIDCtcr7KtYjTZNG1r4h+7oxPgfACpWeoiY
	ab32nVLmDokN4ZSq5TxlmHw1uVhHQ2utEF1kkgAfrNHUUIipbn50ZczDVyYATFCkiOg+aT8n1pyyJ
	EKqAR6Tb+zVr9vKV5uMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6Ob-00000008R3n-1gy5;
	Wed, 29 Jul 2026 15:40:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6OZ-00000008R3K-0EBz
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 15:40:36 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66TF2H1q2179914
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 15:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wbEQBWqENtkMB1w5Wyv00PZg
	odESykVMvKXI5bLwugo=; b=o/soHykAtpHz5PudiP58I6tZCLfgikfopz2ZKEPj
	b7jt4zKk/fj2U0xI+7jqPf9sU0ho/bXaf6mdHehqjhrrIJZaWA7MEO+7TzbVa2IZ
	Z7KKetGWanu/WJnaCNYbPxy2BHgb6CvlhZ6U/MGdX2T8FqJASXLzBZfncT7Hyd+8
	zd/O6PjLW6U4MDPwb4E8iLerDRldTaJjkWO1ceiSIh1hwFabrJPzRRRejFGR3qBN
	3M930N5cibnF8Lg9h1Ebe1mkDpqkRs6Ak4AM0KI4M5W87PqXs5BwofoGkcAmRAit
	u7EyCp3qk/V9tZrS1GIvV9c44F8YhDuBeg0xDeR/PTXpDw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqhg8s14u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 15:40:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c12e43b98so12029561cf.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 08:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785339633; x=1785944433; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wbEQBWqENtkMB1w5Wyv00PZgodESykVMvKXI5bLwugo=;
        b=HSQ1XzcANUBpz/QZwglX7X3KhJ7i1jZH6VhBR4/sSuYj4DJculSRGeiqaSx94o9aZF
         Lu9K49MJXA4iOWasQkCaxpS3pDuGf3KzLwUKZn4S/E+XFUVFvypLQkSUmR8xsAYzb0Ql
         ien8TFeTt1qwPHyw1ofDghshb+qsc2xFAyIF9+G/xH1sdoFCAsLeyKdbji/r/gMvtx13
         HQWhUIADT7fU6o5B2IC5BMRreD1qZcMY1MAfMbjdaSeSzC8BKezCKQtZp1RDTdA2EZLY
         +6oxl4xTMGOGYCWE8bqj+UtaABjV/8Z01ds9xy+NuOiCXaDx0ZXZadJQjNWUjIQFaDnu
         fo5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785339633; x=1785944433;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wbEQBWqENtkMB1w5Wyv00PZgodESykVMvKXI5bLwugo=;
        b=O052bSGxghZ3HDRJYGGwMpjapB4jkyYEjdXkiTy8zbdUaJDv9dIK71wSyW3kuQ3iti
         yxUiiNudMAO9fxyDMyDs/aCDOEnfG4sI3wuMVEkXbjUZ7p2peaxX3XeYdLIrO8+rSyBb
         Zi7N41iWgOXvxCkwQhxEBlGPgXRpHk1QyYTzw8VPff/pzdQ8t5BjlUWph+DNTY9pAEom
         fcNDLNhHurJd6VtBtwUsYSWriZapDI9zs641TSpw4o2bjsMvusc+SCHKa7X7R4S1fUh8
         NakOi4bFGjggxWSFW/RWZ6D9lvlKKwam11iQgteB4J/TEHVuTfAChPCCi8MyEYBi2iQb
         4EcA==
X-Forwarded-Encrypted: i=1; AHgh+RrWFdRao7QAtSaEWy153yiZyCEekE9iLByalPX57034l3VOhBZBhtf65IShGy5CIh9RwW7hHgvU9o4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz556w9bZxADMslIrp8HY8KiVNNaLEy4V4KRi7vJ3yxaHitRXse
	u5MHmRuS6Jof0HEuMxrr96Ijw/QE2qMh9HKe3hkgmBTCKLYWsuk2WeejrcFE2iaZQLwHbBvKCUN
	rj3aL9ilBzQjtIYp82EgWu2ag42INZyHLSsd2i0BPeCFF4T4abj2vTsXzrFYzmUy8eRVE
X-Gm-Gg: AR+sD101wJHXCnYRaxRr5YxVrnWESVvlhrmln8vT9wn+oeDkNPH7Kolnguso3IXWiTC
	JrxIygsYxvq6qnCT+7m7ANcwAh3Gr5qISSOxW0NAGa+6rwzqDlBGkk3Ckn9UQ3jEMYb80hE34wU
	Wl5C1F3MEFxf2QGvVxFWDbsjamhKYpP4k7IgnNalxzHCqDXBvAc7iH6/fqPWW0R/pHuLfyQVC7B
	Rr+xq9FdPMFVL00r5e6MqrJmYvq3IhSb9fKkFPPmFIXbTOVumsYLl2aHEUZVaBw1VnJy3z8oNJc
	Fjau39k67Ho5Np45cahsmtsK8Qut2czzJAVEWPgh2fll8MKolmmzU2jo0mKT2wvK9IDijUOl4Et
	nIA9J7Ug1iUFWMEM=
X-Received: by 2002:a05:622a:4117:b0:526:d946:fc15 with SMTP id d75a77b69052e-529d71408b5mr64073971cf.66.1785339632887;
        Wed, 29 Jul 2026 08:40:32 -0700 (PDT)
X-Received: by 2002:a05:622a:4117:b0:526:d946:fc15 with SMTP id d75a77b69052e-529d71408b5mr64073261cf.66.1785339632098;
        Wed, 29 Jul 2026 08:40:32 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.163.114])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49764d72d9asm68554845e9.3.2026.07.29.08.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 08:40:31 -0700 (PDT)
Date: Wed, 29 Jul 2026 18:40:29 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY
 description for USB4
Message-ID: <lmchnasnykn4v5nxnucrlmhpxubpozhydte4qzotao66rgch7u@jtf7jn6wzopt>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-5-5d9dd5149ec7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-topic-usb4phy-v2-5-5d9dd5149ec7@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDEyNSBTYWx0ZWRfXxT4Su67w/k4f
 xj28CBlx+GvIiw5SC+igVPQMBi6NNDQygaS05VFjhwOAISdKquZ4CAzLpsRHqz0njtWqTO5O6Ra
 43YfKWmGXX1VZg/Y6xFG/K+ZVQH2cSg=
X-Proofpoint-GUID: YjNYWK5uLcnsGqg-yLy1wwDga07orlfp
X-Authority-Analysis: v=2.4 cv=LOdWhpW9 c=1 sm=1 tr=0 ts=6a6a1ef1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=6dw9+iwJWV8PcCi9M4lOBg==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=qXetow4D2dObSurrW18A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: YjNYWK5uLcnsGqg-yLy1wwDga07orlfp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDEyNSBTYWx0ZWRfX3cZk/mCvjejs
 zlYkVsE0EptwcWlRciV/Zt19bB4X/Ol3VVGzFBuJJdsXTpHxqoiLUlToGUbjDN/3q5kXqMYHFZN
 hWt3oDoukP7JNpuU4akjaFYBgMVXnSL3S/20nJOgph7YcN23Ma5huF5vgnZ4J8LVGGGZ4ZVy1ZW
 z4BY/lEGc2J5Yw34fYVUoZRZvNkXYq66C+zLeY6dD3WnJLN0x1woGWj5Ho+owcHvFkNhMUcajda
 frzWGd+F9Two7U4wkzNOi/FwM62//Ogt3MOjzjqkUga2ZmhuCvA6Jvk4zfvpjdyJDXyYYLH6r8Q
 i1hYBgeyCZVpr3Y8P1DjUrAWdfc2bQ5kn3rUPkiZ/MgLQLuiy9YzIF5a/PydxUP4nGhy64LCVN4
 HR53MnltNpo4M/qqI5UX9hf1mvxh1qS5U9FYGeYpqDTZP+KTFWE4W+eeSTuP8BbdhOyVmuPP217
 q2oHKCweRPPp1wvdlFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_06,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_084035_218825_65A5D251 
X-CRM114-Status: GOOD (  10.29  )
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

On 26-07-28 12:10:16, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The USB4 part of the QMPPHY requires that one more GCC clock (P2RR2P -
> PHY-to-Router, Router-to-PHY) is enabled for the PHY to initialize
> successfully. Describe that.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

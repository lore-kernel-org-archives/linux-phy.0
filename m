Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA409CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/6/0CKOxwjsf39Z1cfWhdiAeAWAHLrclggrusYlaUQ=; b=X359jLD3WarEX2
	oh9D7rBZCOMBi2HDvF/KnLsD1nLoLe+je9MNDEqDXHdohx+yIiiN2fZnMRojdL5nwR3NwYPPTArXD
	r9JjiS0tsrccN32w4IvyLM0IoHAxvyrSnqy6DB2wYK95JEmt3fIhG/fBZ1yf11DHOBqHfL1PYZ60T
	tOehjg6Z0HNO9io4S2247BbWsyo6wwc0htbH5sKidKpkVDPDDWiWjHJF+wo6CHrXGP8Dnl0bP3MG8
	N/OkxiAjpK3669gZ4ArPbN7G2IMfMGSTllO+bLrNsrmiKbTZ83VXK27iq5N95YqzYatHkCPiQEMTJ
	0lClj/LxjjpqU0j+pHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFt8-0000000AXhO-20rf;
	Mon, 12 Oct 2026 13:16:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFt6-0000000AXgq-1HlR
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:16:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC07Km1933170
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:16:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hcQYHXRub/yQ1Dpv5XFYeIcl
	fT91vq0bk4FyY51pAd4=; b=LnmOXLHawspPH+yV4CU3osODIUZArlSJ6m7x3JFV
	+pWloCFpbzmEGo/OZMxeJB3iNNJmErxt3VZHXimNJphcWKbGlhyYN3XTOb8tdPca
	Q6pgb1CDqh1T/XJSZAaEmgE9DHdbCOy/PJyhuorHKatgiJGy2UcV7KjDqVlg0IiP
	Ha1Q9js6pIj+wrkItSDCvHXWf605PaoAZdGW0qSHvj3RZbgV9p1cTudbevrr66Y0
	a2gq6GspAZYDosMDdBu0r/aUX5mrpgtrGsZY7xqZeEoMtN0AidI+94wKoNIIs3n2
	SLL+V2HqfbZCozyYFNN2nt3iLSr9uZ0Ui7Fkih0+svh+Qg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8qtkjb9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:16:19 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3552883bd19so4062360eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791810978; x=1792415778; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hcQYHXRub/yQ1Dpv5XFYeIclfT91vq0bk4FyY51pAd4=;
        b=kNyVVUiwlns27TB86Xz4M8sBjqdn09RRWy/9hCo5Z5nzxV4leqHCYQufBtKC8PNsrw
         UvtDcvOMx2oL/Qpf6rva1B9XRUOPvk7qrq/aEFz1dEQljsfYGX8rM+MM7RRIkSeayPuU
         4o3oV0+FJ1qeyItiFVSfN6mrxgs+CVILSnwrciojFbI8sRBXFKSV2QVx697Kq8A5hMV2
         F3DsAVop/AsKD9/3XswgpN9cc9wPHqYPJBbDrUwkiXT/o5nQLxGC9rv73mcRfsWWfEI0
         N/HX7J3NIc3HMZGlo/Mdd0D69T8f9ojoThBRCL6/deVMw66nQka6n0f0AkYOlb76jfYF
         nMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791810978; x=1792415778;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hcQYHXRub/yQ1Dpv5XFYeIclfT91vq0bk4FyY51pAd4=;
        b=Cvs/LxQWJa0V7gCmHhHRKlOyLhf9c7SgKStMj7FfYhCfmvM6h6sxDGKiwOaG4UyRBP
         yTTrMLRN72UsDSvk0lTH/qWuqX1POtD5stoy0b15aWcf2ssgOWDnu8ZXLKtdS9hiI68D
         MjTnb1D+mpL+OeN2DKetv61+7WYmbornR6ME0YWe57WROzc3Oot7QrQsWQ3qexLJHI3J
         6AErDFPQDK9zA4Fhp2oQu2h5Ha6oTpoW1agwWcpBHapFI4EkPpGDjopJHaTewUKI8Xmm
         eUWduznJSOT3gStbtsMQ/eUywsehsI8hlBvhhd2bADECGZWSslUhygtdgAl9kXqhRl1V
         Yjpg==
X-Forwarded-Encrypted: i=1; AKwUvByaD5IelpsnAGviq3BIMi5MGjX20e/5xGDXtz27snN6oRYnmVRlUKdUqasECzaNmpGqQ0Xmo5B5frU=@lists.infradead.org
X-Gm-Message-State: AFq9FYKFfXjyXyzWKySO3g6PPwb+jP2mNrIbI9t4XdKfOojOTZz+VVmB
	HV99IeKo1DxVCF/8a8cIX/uYuFk2oEd6F96N8MzM7b06bkX8p2AFRDLXX4sEc4I5u/XJeD9Ccnd
	zKYbH7CezLMJfPYl2kBgugtRUiFcRkrxSQywhJpIqzjGb+DmEdnDwHIWqk6BZfD+nBDEY
X-Gm-Gg: AYBFou2nHmg2I8tTzh9AlG8vjy/SbeD3fWRQ6QBfWIm2KSRVY13jFw5sddp56+Butqz
	tPiw4/ouyAu/hSNo2VuXM0YfAZi8eqqpwip6FHTt3sSkkub5CUPkicOm0Fp9rbLJt7LjCK05ubH
	6N7/S8VMLiXt1jQ8mB1TEUn03wMV/JTaIAwO3lEuaORqp2XRS3/NP37Sj1O96ol0W3yNBZkBnvL
	xQLpuw2/cKSR7Gr9iGL10GgC9yT1JBcNjj9H+Re6eg1PUM1sJTy9CNRUV3hvwHbwk33Uv+W4NJZ
	Ae1uez+dq5OecqaHBY1iiSL7SSi5geX21fb0cWVatU0MQjAcwNfVcQp7OkqDsf8pdldcPzW5AbO
	78OUa72d5ea9kXEv+QPlhuL7N9JoJeo3DaYevPbuAvg==
X-Received: by 2002:a05:7301:25a1:b0:35b:dfde:8779 with SMTP id 5a478bee46e88-35bdfde9709mr314864eec.7.1791810977911;
        Mon, 12 Oct 2026 06:16:17 -0700 (PDT)
X-Received: by 2002:a05:7301:25a1:b0:35b:dfde:8779 with SMTP id 5a478bee46e88-35bdfde9709mr314819eec.7.1791810977176;
        Mon, 12 Oct 2026 06:16:17 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca0e64csm36303294eec.10.2026.10.12.06.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:16:16 -0700 (PDT)
Date: Mon, 12 Oct 2026 21:16:09 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/6] PCI: qcom: Add Nord PCIe controller support
Message-ID: <aszdme-LztWNw1J5@QCOM-aGQu4IUr3Y>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-3-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-3-ed05c6e09240@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MiBTYWx0ZWRfXwyZCTdslD2mY
 /dWp5s7VdOFblgt9DlFAMRwTg0HvUUflO0IhxkYxw7251s1rzykVEjrGLQyBjjoMEVRT38mYtVx
 AQoD8XhgwUEbVnr54zlBzaxGdhY/PBp6gq2MT9DyvijjoC0H7EEScPsWQyzHPhQydy1uoDiVofY
 Bf0PKrP61qO7oYuBfEDVVKD/aZr04wtRT9gIVQdVlUtoERA8LiGM2Np0SHfri2xGzUCJYe5ZjdB
 xANenqbJTYdiG22Hk2g5mNTy9fWAlyqBkRDogWXOzsGv/c7ahY4j9mljBW/4I7jQKRiiQB8Sx8+
 +omH4dyoQ/bpf7ty8EfnblaZpZygXYNnWda3MBLRnJWlVHcj3PySjOv02KBwU6UsljYfjiQTyEx
 uEwe0bIr1jykvR/bP7mcxXfdIQPAsA9YPAdds//IueyUMlVwVTzTywVO7h+K1Rp5F8iDt77+DvA
 27KtKUrOQa+Z+7b6s0A==
X-Authority-Analysis: v=2.4 cv=c8U+0h9l c=1 sm=1 tr=0 ts=6accdda3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=eXNsmz249v773VhVZ_gA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MiBTYWx0ZWRfX3ZMavzcUK4W0
 uBqm3Xa05ZDNzXZeLoUjdnEmdsb7th2xQN3OlHxFo6l9d8jCfZ7XbEiA/uRNOD0BPaeJUzcoony
 s+sDVz6GTDzsSqHvycT3rVHsZZVY3JQ=
X-Proofpoint-ORIG-GUID: x-Dkb-5eH7w1wasny2k5rEpQSUTrh8C3
X-Proofpoint-GUID: x-Dkb-5eH7w1wasny2k5rEpQSUTrh8C3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_061620_463094_5AAEA00F 
X-CRM114-Status: GOOD (  13.28  )
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

On Mon, Sep 21, 2026 at 11:07:11AM +0530, Krishna Chaitanya Chundru wrote:
> Add the Nord PCIe controller configuration and the platform-specific
> settings required for correct operation.
> 
> Nord requires the NO_SNOOP override and L0s to be disabled. It also
> requires a clock-gating-control (CGC) workaround to address a PCIe
> power-domain timing-convergence issue. Set the CORE_CLK_CGC_DIS and
> AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.
> The SLV_ACLK_CGC_DIS bit is already configured by hardware reset.
> 
> This behavior is documented in the private QCTDD11972446 erratum,
> which is not publicly available.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

On Nord Ride and RRD board:

Tested-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

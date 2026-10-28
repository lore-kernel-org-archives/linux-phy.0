Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F31606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c08S+Kc6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=EXjX8reH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=fAqGq08B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Am0MgWl33wE+KuqAPu8uvFPMNNO3HE+qTIrhvnFcvFA=; b=c08S+Kc6fp+Gt4bANIdPVgC34H
	gsgNxx9wzxk8YHaIHca5zre8/mnnb+CjGjxoAZoHrYyp15o0Q9Wxv1rQKmCqP0JII1b4trUH3QfKc
	d99qamlWSYP2GtzYHGDkMfzHywiwnJjn8hRqsJ9x/13cptZ5SRjvmsn3R6PSAvUb7OiDnCxa6nqPn
	EVFdNuWDarTug3hvBw27+YLTyNCAk1ftV0KjoC282OmqFdou69rfvZvLtIJiu3qp/EbdgLjbKe7/5
	qCOrKzbhR2pOaHKo9H9RyJWDvtKG5E9U/+C7k6B1612jKdfrkF0YA4vuY7ty/5QQUHe/HAQM6ZjSl
	5Df4JScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Xb-00000007Mxp-2rni;
	Wed, 28 Oct 2026 15:26:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5XZ-00000007MxD-0ecR
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:26:14 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA49s966546
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ESuzb9mGlbzEuJZWgE2L7mHU
	Td2bVeRjU88sdK3aSnA=; b=EXjX8reHa2KNrA2LGI8s2Ahf2Zmow+agLi9E4cHO
	9SV4Hdv0i+oD5Of3hssDyyEstAdMoAgA5mjKHnx8YUDJ3cEqPt7i/gebjFn4XBoE
	FAIQxgdDD6lmld4RpgjjCpxMZaHxYCEHVSxkw2b+36caFYTqzp/GExzw2jLGKU0f
	ddiRRjxcWdps2X5q9Ifv1b8XMQSqo8f/VGbNIhsAS5QPL54bW0FHAT6u31afypPU
	IffH1eARpTAuMBefiU9pAQbTuXtGMHjzHDxQcf+V6Q6XiLDtt5buCFUlN1HT8nlY
	ipYh3awuU3XA9aQN0VPSxEKR2GCKm+rZThz9uawCEOZCUQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtjgjkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:26:11 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-99082f450bfso877912241.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201171; x=1793805971; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ESuzb9mGlbzEuJZWgE2L7mHUTd2bVeRjU88sdK3aSnA=;
        b=fAqGq08BVU3C8Yf2jvrh+h85S2ept/6i3zlPTY+eorVbFgucCq3o+/81qX+TKA3atQ
         rOnuBCbvcssdlltog0MXD0ySq9MexY/+CVE+HJJbRxE2tLh6UwVVVmUjNw0FJzlgPQk1
         ZO2+ZnysM5GjrEkmE18mtbfI8UEBLbgZc9NfvlETuRB3kopUVxuKjW954cxmUeGI9TIx
         P2LR3f0Wpk83Z3WZdgAvDkuMO0hMuM6myNa8ujHZ8Dh8tli+YEhzzUIAZFYyRkvCd/eq
         G1u2L2bgrjm8ze3pMw31/klRM2H7G//UA45OcWu4KodOz+gbQnSrTuE2Gr0axjGk0Gif
         0X3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201171; x=1793805971;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ESuzb9mGlbzEuJZWgE2L7mHUTd2bVeRjU88sdK3aSnA=;
        b=U/o4/vW2diA3woZ5BYzuoNnncWE/6zIXIu5COqKmKEGt5cFX1qHH37bXgcRpLNomHI
         Ti3gy5y2y6qDcq7UjHoM/RcNQwExYWuU2maVn9HZ3uDY2bzgx9kk4R8h5brzLR2V8NbD
         hZnLCgOsHD8/w/JXWYPs6ZmvI/FyOZUJX09x2nEteJSYsxywti+lTKf2wcRdOpUPHjie
         hnWNMkBOJIhYkrrU0vMREute9wcw5aEJahh3JSmENO9o1HAPL9Pq7iyvGr3THWUuoJ9e
         70XA5hZ8MaHYTjhdw3clOVXx/5KlAaJYliM1Bi62lOilfDNTkadTHp9GJz+4mZ1PQ9Kw
         US/g==
X-Forwarded-Encrypted: i=1; AKwUvBzj9K242y+Gc7hxd7pbfHcqE0ssWEgf7fT77WSzlDP420IF1sO7co/TE1P81m4KUZ/eEzq7MMgFpcw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJtxxORZSBmlttLBrxNeeHMFOx/w4HVFef6yGdf4Uxb8PzhLVGl
	vxKB3ppMcieR7/DZrSCcp9y3rJ5qVAQvEcQvamBTyMwwMtvwJ+UbyZVgoJnCshfXhR8nyF62+YG
	kxHpT7i6vBDSqffe1IgPbulUg/iRFJMcjFoAUymo5taFxX67HxDI8/yVihFMjkjZcds8H
X-Gm-Gg: AYBFou2o/GPaMV1117JxkatMitPW/pYcuSILSg1oU9BtwKXjca6XUHg4FkLtSB28XMT
	+tj3eytiiILXvByUz7QH8/wICOjDm/ZUn6wBU8nNQdtCU+rWoGH+K+U2a5NseyTAOABXY2pFtSk
	cQph7cxJGukHXgyE0TU4oQq366/IUZyDR486CNmVk0+GOCcYU/ykur7oXsf0k5Pf9Hqz7nyryR+
	7yqTUkHeBQss3bN9Lq+oeRsQl+tT5o4OfaYOPw/CPN8MXhiWgPtk0whbglD1qXm4VkLfnwBeC+3
	/qiw1RgLm6P65mABqgeZ7BBfKwAjIwDgYz3ygXZTWc0soVZ0cxtojDyE6CWaMwAYkoXq5gJGPi5
	DnCia2IdtFE6Ixdq3/Vvsu47fW4Y6nP33KqMMPqES3J/a3y23SLW4kFb684E+q+11kw==
X-Received: by 2002:a05:6102:290c:b0:7b3:4199:2dd7 with SMTP id ada2fe7eead31-7d039ef4abdmr1403698137.0.1793201170586;
        Wed, 28 Oct 2026 08:26:10 -0700 (PDT)
X-Received: by 2002:a05:6102:290c:b0:7b3:4199:2dd7 with SMTP id ada2fe7eead31-7d039ef4abdmr1403628137.0.1793201169882;
        Wed, 28 Oct 2026 08:26:09 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a978d57b39sm83510445e9.10.2026.10.28.08.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:26:08 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:26:05 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v23 03/15] phy: qcom-mipi-csi2: Add Kaanapali support
Message-ID: <z3oqnmse3plnnntqwxrpi4xozyuxn6a47qc54agspwuzb4djqz@hzz3lbcmkvlv>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-3-95f250b18612@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261028-kaanapali-camss-v23-3-95f250b18612@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXwqFN1VUPTMga
 3qCCOgOtW42CNfvWxnsEDABcsNp7Nt1+9verZwtFQO6a4WtGvslfZu3GGqnzeia+HyyH9X7CXoF
 WRiZ9PgCQ5VDzeX8k0uUCHj8BXPr727LyP3gHxZQ2KXpohDWQ7co6YfvQvvx7EimbiCUpZyiY5O
 jsmiYYDf5DQZbZ9SYH9a74kq/MlDVeKOXcEQfiH9i38lG38uiC1b3p5ypGTyZB6BUa7tfuTGTON
 dRxK5zaka6IJML03M/600grc+V5vGmsciWNav88XvN5R8k18bA1LFSZynZYM87aG9R4KKAExZiB
 /v27G8C2yd1YXNlEhxQ5cMg+eVByJj14Cr+WEwM78Me7jn2AQf5yHgVxSd6y05a/71qtE0YmL7h
 Xnis2zABVkYAPAMjiHsfJYPgG/7QxddtcI7wng/OvdMcV97gFCV0q24gTuK44K1NrusQ945wnH6
 ArOmg2K9/uhdoMfgXMA==
X-Proofpoint-GUID: spCDhhCWPp5bXbmecAvPxFsY9_AFCNej
X-Proofpoint-ORIG-GUID: spCDhhCWPp5bXbmecAvPxFsY9_AFCNej
X-Authority-Analysis: v=2.4 cv=LdipeTfi c=1 sm=1 tr=0 ts=6ae21413 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=f333AuverTXq-OlsU_MA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXwOFf4SFiZNWf
 23UI/GrY3baRsD7nY08taJHSXfAmZegwZfxFJoNtecau9t/SeaaqQMcpsIYov9mINTtUixdntLz
 aD5zgwUImpo/3cBlxW+N0+1LRcytC2g=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082613_331772_B7B59C45 
X-CRM114-Status: GOOD (  18.13  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-28 08:20:37, Hangxiang Ma wrote:
> Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
> driver, including the Kaanapali common status offset and power domain.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
>  3 files changed, 18 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index 8cd331cfb4b3..658a39463104 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
>  	.genpds = x1e_genpds,
>  	.num_genpds = ARRAY_SIZE(x1e_genpds),
>  };
> +
> +const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
> +	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
> +	.reg_info = {
> +		.init_seq = lane_regs_x1e80100,
> +		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
> +		.common_regs_offset = 0x1000,
> +		.common_status_offset = 0x138,
> +	},
> +	.supply_names = (const char **)x1e_supplies,
> +	.num_supplies = ARRAY_SIZE(x1e_supplies),
> +	.clk_names = (const char **)x1e_clks,
> +	.num_clk = ARRAY_SIZE(x1e_clks),
> +	.genpds = x1e_genpds,
> +	.num_genpds = ARRAY_SIZE(x1e_genpds),
> +};
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> index c0a4fa20eaf0..aff9e66f0352 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> @@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
>  	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
> +	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },

Nit: Shouldn't we sort by compatible here?

The rest looks good to me, so:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EC4606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 07:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0H+V10i+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=YOfgiqYX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KRQJU6FW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=93rlJazJ6ULQbHXdnjD3EtT5epsxHqaGgd7U6uyRpZs=; b=0H+V10i+DXYrXYVFpb9di56U+W
	xPTPT91uPaoptpHBD9Yqj/PJWmwmxT6yZq0wr5CZybvNkvXd7psFW6/c3xg9je4tURJIBAYluNV9W
	1awI9I/bpdpS4pJoaS7Ml8Z1V41D2imNehKbvvyat1jvL2AXZEepaD9Sm7SLFqFTaTUPEUQc7HZP+
	CXFT5MrbQ2f0bBGHyHMuYcfXAPYLLA5dumh23vJpCX4FPPOjS9YBVi+/HGH/fhwGsjxWerT0+ARBD
	gtBI2LEiVJPB9RyS6zOkJlJnkJLStgpYmINRvincri7QU9/FSo+RX3NmDREHQFHkmqqFf06CtbTkQ
	1916ybXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDE0-00000004hkl-3Ed9;
	Tue, 17 Nov 2026 07:03:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDDx-00000004hkM-3hEh
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 07:03:27 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AH6LqK13980776
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 07:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lBwQtKsaWDkw06NQG+ONWSv2
	LveE3CT9fBPJlpwloXo=; b=YOfgiqYX2aKuJDkVKIDfbOa1ABub0VL951BIfu5K
	a7zBtsdygFyn49hTn6Wja2iMQ9XFDLBdJXUO+H5c0k7qkw2mW/qGNYyo2XUVSFcU
	zBEDVv/TKQYNXqGUkan0yzzQa7hluVC3v1pM9hfQ1Ufu0ncJB1B4V/TVZHyaJFVz
	pjcexW15AhzALuUjKE/hqSrPFay+MFn/8nfKn8eq5YCyrG9pBaxz9AHOawGAl0cp
	XCjryMi1G5URPMu4bTPVh8FKu8ZjQH5DbjUFUjsxZ5Ts9k9DBWgb78YB3CH8YE9I
	nYuyVVCc4TM3D1RjOGJVB+LfusFEXe9aTildqnlDSlOmyA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0hkd04kf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 07:03:23 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-85f37d25fa3so5007159a34.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 23:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794899003; x=1795503803; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lBwQtKsaWDkw06NQG+ONWSv2LveE3CT9fBPJlpwloXo=;
        b=KRQJU6FWZHTtSHEjbQITUe5GkO1v95k2umr2BPDC27aY+2571Ac1loJWtPi8uDliVS
         l9BNv74tAv+OG/2AyiKcUyEFkBVhejh7vz/guMLGyOuyVx590HBvhPVD0R5x7PirsqHd
         90C6UiS0J17PuxPrz6Afv03zJBB57mMGzdAzEDa53KNErfF4Y52hSp384rWdGuQSNobM
         2OoFUv/bJylTUAZx/viS665fmHYLF90yM0MT+IBiUrn1COYYKXyV44lZZ7cl9l5+uxC5
         dTU389SlvzIdv2HzV7OjhmEeZo29CJRkYj99kpipHKHIblmkim8vjd4EXhf37LVdOOUc
         cYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794899003; x=1795503803;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lBwQtKsaWDkw06NQG+ONWSv2LveE3CT9fBPJlpwloXo=;
        b=Oppzw9MVOO+WltaQR0EovCeU0zVrzj4MaQTMQgT77keosm9cJJ71zOe5JduYoSep7v
         QfyDe8Vbh+oCvUY4p82NLoQvA6GRd6Pq/NWlyiKwvQN+HipVawRaFUArNgmUD4ktqaFJ
         xXqesM3Rk/bovUc4X4Z0u/ar4zGnkuZaqaF4yMY4At1iXq2jvtBelSQrQrmRl31MZJy/
         HTylsilWNvLvTyKEYoHc/N3qZ68DnR8qaYh01GxJBBbqbd/LWnLau9vNYmKTiFIHN3pj
         mocIHDq3tulLRuRQHro8nFIElI8DXb2OTlPHmk/OleezT+/cu2bOvpaPkhGHGVfRoNgU
         yJ6w==
X-Forwarded-Encrypted: i=1; AL+hErHpp7ly6yWr3qhHS1AxShY6Dc+eK/7aA2CaT3d1XWR10mkDvaM/bjyhmREAv4q9IApKQA3JwrY9NlE=@lists.infradead.org
X-Gm-Message-State: APuU4Z+ycCyU11J05G9hQmRI8hYkKux1vbdGEgitnNK/2+bKt0lsLLJd
	/VeWXBc+N5tMqS2JUtIOIgLz61DSMXFru1yAtrbDYVCeuYgGBqTIVoANpJ9s4k4q0gscvJLbfFw
	Vg8uebWCoq2eTQbiYQvxgiex4b8DeMc1zlVgK8ixzinKfpv9FT9TJqhGRLXEwbbJmjVKNbjLejC
	Jo
X-Gm-Gg: AYBFou09ySZ5zGcgWgcJtPvgVPuNo4yGreIfmTCyZJKEmjLAb9xPvlLpcbcOrNO3TjT
	cy20zgjCnJfThQ55pst+igMf+bg2JyrZAu44cklHVfB3oS7JVplX93vMkDVlVqd3WfaquESUiTR
	m/ha3T22B4o9Z5wFFMk/2if/rp+sMBJ5xi+Af6YcbVeSSZN23I68gVWqaLBdl/P1tn6sLC4ww7K
	kpa8ecGSyz7dcZtMLQoyBS2Rr61PGTfcppeWw6OsdvNhyF6PhOcw+tSxdYxiH9xoGlrt+lvWaWa
	E9D751fbn3Fd4xBVx2tmYkVhQPu13nsIqUoTqcruSg4MLOmqAdv9OxHAPQjRmNIfP+ILX3aMZA0
	LISkl3oGbownafkjcFjDe1pFk4xKCAUekmCat8FajbCEa49djKB67rNIGBpX6e+qY3vLK0KL0yS
	SjmeHz92HzZP9OXIdVqa7M
X-Received: by 2002:a05:6830:4c16:b0:862:af57:790 with SMTP id 46e09a7af769-862af57495emr9530809a34.16.1794899002986;
        Mon, 16 Nov 2026 23:03:22 -0800 (PST)
X-Received: by 2002:a05:6830:4c16:b0:862:af57:790 with SMTP id 46e09a7af769-862af57495emr9530792a34.16.1794899002579;
        Mon, 16 Nov 2026 23:03:22 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-862a82c4625sm8601782a34.22.2026.11.16.23.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 23:03:21 -0800 (PST)
Date: Mon, 16 Nov 2026 23:03:19 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-pcie: Add qref and refgen
 regulator vote for QCS8300 and SA8775p PHY
Message-ID: <avv8Nx/ikeIML9DE@hu-qianyu-lv.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
 <ded7f87c-74d5-423f-acd9-efa83a472c2b@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ded7f87c-74d5-423f-acd9-efa83a472c2b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eqFKXYpX c=1 sm=1 tr=0 ts=6afbfc3b cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ddo9B1qCPzyyS7SsBnQA:9 a=CjuIK1q_8ugA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDAyNyBTYWx0ZWRfXziSwV185mwxg
 Nfezeyx5Iz5aCNjtUwvP6btdlRAc8ISGZCAqm/2Fm9T5wo9hPorPupH4O9W3+MQ9qri842Rjvly
 X0BZdJP+R2x3RCnd9s1ZPFSw+E1vhiE=
X-Proofpoint-GUID: U2Tsykgi4--QNGanCY56yl5Y68kveuS4
X-Proofpoint-ORIG-GUID: U2Tsykgi4--QNGanCY56yl5Y68kveuS4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDAyNyBTYWx0ZWRfX7ynY55kGd5eZ
 QkC5VeQiZD4HXLCBwWZ+4njd8+QAApBY9j8gvp7avqyS+FiTv7iBJQFA4lHfijDMq9Oq9kqgKfI
 MRnr5RL3Ked7xGTI8D2acn/EySx0rWZOWi2rN/JzXchrf1qTWXQDZnsUABsXjPzbULcWH3mBou8
 HtU4FlvrVEERpVcargJW+vmbJbsLYIoEoaREtbe/QoCaYTCqoapO6FJL5zyt6RjncjMHCfR1Mh3
 eEtqZURaD+1oBLB+Rt2LqdaSCTmQE9045iGqQbNJjvJuyIs7u0vKjFB+5QRb0BbXdCP1PqARD7x
 MdZms9sTgGaEKiBOD9DIISxctTn1n2wWUgU9M95tmSklG26Dz5MAu/Hibbw2CL6cGjwdmm0QiLf
 xHh6awHdu3Rklc28gxlYTlkiF88l2XXchmp2MQMuaUEwXkMBym7uGVI2LEzs1GZ/et+pn20YgsM
 8yPnRALRAojr/3mWfpA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611170027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_230326_038365_4002408C 
X-CRM114-Status: GOOD (  26.20  )
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

On Wed, Oct 28, 2026 at 03:37:40PM +0100, Konrad Dybcio wrote:
> On 9/16/26 12:20 PM, Ziyue Zhang wrote:
> > Add a new sa8775p_qmp_phy_vreg_l that includes vdda-phy, vdda-pll,
> > vdda-qref, vdda-refgen and refgen supplies, and use it for QCS8300
> > and SA8775p PCIe PHY configurations. This avoids modifying
> > sm8550_qmp_phy_vreg_l and breaking SM8550 and SM8650.
> > 
> > These supplies were missing from the original driver, which was found
> > to be the root cause of occasional system crashes observed on QCS8300
> > and SA8775p platforms. Without voting for these supplies, the PCIe PHY
> > lacks stable reference clock and voltage, so the PHY never becomes
> > ready and initialization times out:
> > 
> >   [    7.303119] qcom-qmp-pcie-phy 1c04000.phy: phy initialization timed-out
> >   [    7.309948] phy phy-1c04000.phy.0: phy poweron failed --> -110
> > 
> > Note that due to a hardware issue, QREF actually depends on refgen3
> > rather than refgen2 as documented; refgen3 is therefore voted manually
> > via the refgen supply as a workaround.
> > 
> > Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
> > Fixes: ebf198f17b5a ("phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300")
> > Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index da83358c97ea..ab81c6e584a8 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -4094,6 +4094,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
> >  	"vdda-phy", "vdda-pll", "vdda-qref",
> >  };
> >  
> > +static const char * const sa8775p_qmp_phy_vreg_l[] = {
> > +	"vdda-phy", "vdda-pll", "vdda-qref", "vdda-refgen", "refgen",
> > +};
> 
> I think we could grab them unconditionally, as QREF/REFGEN appears
> on most/all SoCs (perhaps with regulator_optional_get so that we
> defer the correctness of this to dt-bindings for any specific
> platform)
>
Do you want to add "vdda-refgen0p9", "vdda-refgen1p2", "refgen" in
sm8550_qmp_phy_vreg_l?

What about this patch that adds "vdda-refgen0p9", "vdda-refgen1p2" for
glymur, https://lore.kernel.org/all/20261104-phyrefgen_1104-v4-2-ba508fc6ab40@oss.qualcomm.com/
Do I need to remove glymur_qmp_phy_vreg_l and add "vdda-refgen0p9",
"vdda-refgen1p2" in sm8550_qmp_phy_vreg_l?

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25051C53219
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 06:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Snac2aJ6qEx36hCqgbhgO3s3BeUSeZkYw9H7VVw1E4Q=; b=a3VdfgMrk9KaXi
	KYeTaHlrlSwGHBj8zMrjeLotUD0bI+KKJxsTCW/hy3aiJFK1FDdfBZ0t7DK/XNFYIP9CdeKf4yrlM
	tSCOoSnaURsZ2OIUPyXSWXOj2UiRDxY837B5WHpOpGwtNcDacjbpvLcsYTMFO1hZlVG8HQ3kk0Gh+
	R625PE5anAJsclQrSbop34R6F3KC3fYOIwIeNRm8O2uVP86KtyRBKJaYYxSndTcrgnodNcqxQXwtT
	aF9+a+S2dLz54XsQVd/EZzFKZiv/ISonMQGpfgy9+pl+Lnf4JvzHFsQk97z2UJnQEkmOCQFueFW68
	Q6HxtrngLe5b8N39XI6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy3C-000000073fH-3TG2;
	Wed, 29 Jul 2026 06:45:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy38-000000073dw-1jrS
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 06:45:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T5bIub882583
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 06:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ommcEVs2pnbfLRWZvQhPKGr9
	uDr7PuFiFOabR9Qdl3c=; b=W9ChOkJq04trbYAqLCkRfxJl6yYT8kh72K9i7ofE
	3gVkAegRhbblH2ERqURSl1DLjdbe/Sm487Cg+qulpW3fAZ4HR8il397Mt/kDHH9B
	5/5qWB/tA2yz++1bDK7KtYfUERDdplWHaPzS5+2qJjlJWhhMaYwqUwMMVdxBDyaY
	Dpb9t5A/bWObwqjVhdQGxsbM8J53xjouRrWY9ruHWHJc60L7E1aTkHDWuVA6GRJD
	48WemqzDcCqMnWZnoQQcHW3TZYyrHKXkrbEA/krj2n96RKluEWbLzEjzcY5DQmwh
	jnVYr0Yox2pV68UdMnjT3QvzR5Sk5GS2lAcufStK9hAypA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqbhj87xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 06:45:52 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8485d853b08so1558100b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 23:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785307551; x=1785912351; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ommcEVs2pnbfLRWZvQhPKGr9uDr7PuFiFOabR9Qdl3c=;
        b=TBtX58FFLLJ5wfibMEAI8Wu9GZyNHuZAjQ8K/hd6IXwDNQOtxeRtzSzfNxkHVXmOXU
         7GRtJeLzETuwMWukRMLH9ddBFOWvHtx1GSmryVMvooXQriV5KkedQ4wh4LvhsXQeK54u
         k7BdhH4Bw7eMA+v0xKh3hG5flZRVfc/wM2zI9a63DLxyXcyTakHWhGuXnhDy3e4G//xy
         7fl1wbQfJwRdmDZ1gSCjnJ6jgi1dAMtdObCPLa+93PSqtrdeA5fmq+M0/8WCj5qE7EhP
         0V/WIlWsW3FzdTCBG/9zmda/85BdZ2zfnaV2pOy5g76vQT/FhD/Qddh5d5d8o7r2VrQJ
         HzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785307551; x=1785912351;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ommcEVs2pnbfLRWZvQhPKGr9uDr7PuFiFOabR9Qdl3c=;
        b=CbfCjpYMdraKz3WoHofzsAKpa4lWstsTYZN4rJ6Kewcd1vi0KALL+4lY2Tvowqr70I
         +YxYUxEcClHKO1wUYNjqiZ58XFwpt/9Ku3PVStqPEGwlxdQf16uBiP5OfryBx5ylcl2u
         YD97ImM1/jcwbDyK7sDco97tK9GbBirjL6ocZ+bsKnUULoiDCOZLBHvM7YC7TVBOFh4K
         yUYvn7UXXBazVw6xUXpM8EFaGkTTh82vbFe2XkC6cXR7ahtzG0Cf9OrgTkNwNS4odvXg
         fJbgwLhABCLrY2ZX5bMauMHhw1LiTne47YFxxHzDIxPcoYO6sqher+E8ALpPni+nluzn
         tKMg==
X-Forwarded-Encrypted: i=1; AHgh+RoWtwur5+u7ogrnng+80S7bDVocvWZ5JdaIM3GDsezd7NrHaxcW9En8Q2QTFFmdCs5Wl6cY2ElTfRQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFRWbtsbZ5exWyYcv84CnIN/AFTw3i2WRYcMJp0hJ/czfhCEur
	tjzitFcFmIL8GRqymHJ6E4iWjv2s1+v62JSPsVLt09pNrggKmH4n7hoDg8FFD0OnfIfY8x68l54
	KLs95GDh6ruoUnCpWsJFz7CHuHGoDNsPNlBDTqQYs8VNwzq6uzgzrjZ+qwWXpJrF/J7Ns
X-Gm-Gg: AR+sD13WCX9HH1wq+AVrWwGI0hgv1vfP6tXP7RtdEMRxCs4cZoZ3lmI1GRSLCQNqjRy
	PDBfoH6HoLT2AarnyNDpfoxQvd8SXmOxoHNs4jGnAorJxyw93npEkSIDaT2LyLC9zSZdYaF22fo
	4i7DxEhmL18+rCrYQmb5+spzHzYMQoXbiGnuX3EWiaOysGXMZ1Ji/5/kVrZ5YmbMT5eWeVG/PaZ
	8xvTf5MrFd7sS3TypQr/x7bJ1vl/fBS4bs8ZyzBUIG7xlTp92YghfwUW3hF4gO/8H/H3QrgOlbs
	bg6hnITz/bLn8QeMSFkZM7NYJ7qPKDsKjifs/QO75S5cvPT4jIcY5UwM2kVZ/uTdOyq10tpIxDk
	D2XEpLoJG3McoprwjLhX4nqA/zMz+/iPkweyIVlJhDI9SsIQ=
X-Received: by 2002:a05:6a00:845:b0:84a:6726:62fe with SMTP id d2e1a72fcca58-84e932daa02mr5771292b3a.65.1785307551307;
        Tue, 28 Jul 2026 23:45:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:845:b0:84a:6726:62fe with SMTP id d2e1a72fcca58-84e932daa02mr5771258b3a.65.1785307550743;
        Tue, 28 Jul 2026 23:45:50 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84ea03ca665sm872831b3a.52.2026.07.28.23.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 23:45:50 -0700 (PDT)
Date: Tue, 28 Jul 2026 23:45:47 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies
 for pcie3_phy
Message-ID: <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDA1MiBTYWx0ZWRfX5YKeJgN9u0jc
 hm45n9BWf4H5iJ07Q59KIDHFr0SaqY+T4fKiH4mDd1dxe+23ALpvFE6qdBnN8zjhr4PsEsBCf8H
 VR6n3EC0xkv+HtuSqDrXivJhfDzzbM6XZoQgHYhdmPZ+8ptP/wDX3w9wXDb09AZhf6CcXqfhlnT
 Kpk/gsxHbISO8N7/3pJIVv2hJzYET/XKey5ex/ekb3TFzhvUTH1a6TfgL9c/djGR5z7u5j7Fplc
 aXwp6zVoFfH59cw1P2pgPsPbMUbyUs8CxwyE1/L+GBpiKposoL8kKznAp5KkoZIbCPA8420sPZe
 Na6GFr3L8zHcGjhMV/sVbHTqqRZ4M/hml5x62HDfvyLBfMwMgQZvDs197g0r6N7mey+CVTUA3Xt
 DbLbGqWFupalDi7neby7d2YJ2HKy19wC0fWaQJfelEHgj7msl+z2LV2cZPVzRlkg9Lthz5jsxEg
 lv9jDBpH6KcCxmSgYAQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDA1MiBTYWx0ZWRfX41gBWdnpVaGI
 43dK0iZRfgS7MMVGP4/0MSUBWUH8SCngto0Nc07JQnqtDM/mmoMIR7Z5Y0Cqm5yZbvparLT9ehB
 LZ6CKgO1rANUFhyG/ffbjluebTXNEjk=
X-Proofpoint-ORIG-GUID: fnvjQVEahh-1iHCs1oPYlaiJsDlHWo42
X-Proofpoint-GUID: fnvjQVEahh-1iHCs1oPYlaiJsDlHWo42
X-Authority-Analysis: v=2.4 cv=dsvrzVg4 c=1 sm=1 tr=0 ts=6a69a1a0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UTVeMogfEYuOrfk4Zd4A:9 a=CjuIK1q_8ugA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_02,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_234554_593243_B92D5261 
X-CRM114-Status: GOOD (  18.59  )
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

On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
> On 7/24/26 12:01 PM, Qiang Yu wrote:
> > CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
> > board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
> > vdda-refgen0p9/1p2 supplies for &pcie3_phy.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > index 6125617de82a..0aae613a33ad 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > @@ -28,3 +28,11 @@ &mdss_dp1 {
> >  &mdss_dp1_out {
> >  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >  };
> > +
> > +&pcie3_phy {
> > +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> > +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> > +
> > +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> > +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
> 
> I'm guessing you also meant to enable it here

No, we need to keep it as disabled because pcie3b is not enabled by
default on glymur crd.

See the fake pcie3b_phy be dropped, it is disabled
https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

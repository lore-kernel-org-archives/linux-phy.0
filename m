Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29616F8FA73
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 13:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCbnfv1fvYK4eufQeqnYlmurNvZ4CROLYfaRpOnVnjQ=; b=siW+vsScMxbBja
	QB1gMfi/1PuOLLbgvARSUgnaOgDWLuyba/qYfLXcqgaYrHkb5uuV2zJq0PdHe2BfMGb08PpJow6bk
	K4AMTlbbLwlp7uTXXIueokKnlQeBnokDK96UlptNenHs6PUNUIZfdVN1nnBn4xdzZlbv1CLQRZfwc
	UCj0RLnb1GGmKkKR3jIyQJA6dfd+91sxSfOYF1tVqI1CvWZ6dkavLElGsGTHKdNtRhr8Miz1zMOcF
	ZhbsavfAjWVltE72ZmDeX1jxlYUaggTqoUuyDHo29FqPnDe0EdTdWTQ+bg4obL8vfMJ5EXSTLnRLI
	qhfRDbzRkojTB4h2u7tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBBW-00000008fkS-321s;
	Tue, 21 Apr 2026 13:30:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBBT-00000008fim-3npm
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 13:30:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63LBp5JP1014344
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 13:30:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YIhCcv01X0hJw39QIV6zhnXw
	a3BDMNZiyBozWH7UvxY=; b=diAQQVAPQOWr6HLVeekonwTybCTA8ysbUFeCDgbR
	yfhmHOOG1x52PMnGPD5wDSxvCRFm9YhS0tlI2INK0y/PBoHVfTslaf1PZB9qMCXJ
	y8FIqJSXGaywJT2obYsCuzIZJt+s9bxnQoePVcGD4Kb5A2n6kvib5pWd2IBq6F6q
	J0fh4aRac6i0ZdbwsxHouVMBtfzspCtqRRkFgcsKgNAn/FnhkMU8tMoU7Eip250x
	tu1jdziFWRJui1oi+/nnqt8+bLKF1c5wNjQsS5q+oi88HTR450XcbqyyPEycUTF9
	LV+DwdhfeASo3uqw88YerBFHzx2/3Yq2gG8Ij9W/pDpH2Q==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnt903b5h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 13:30:34 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2c16233ee11so5691852eec.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 06:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776778234; x=1777383034; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YIhCcv01X0hJw39QIV6zhnXwa3BDMNZiyBozWH7UvxY=;
        b=In0ZUKPb4ioN7SptmCVcrJNqeOyT6xfwhhjJ8JtYRR10YaNPMD1qLmw3Y3p+WK5K6s
         Rc5NEuZn0wPK1+UNYoPX4PcY6ePQRNgxL7dhXWiXkBu6T30C9Vs+4SRKJJ7jnWY7Aw0s
         KW0HNc76Oe3n+LNt18bZmCbX7Q/kET28FKecKt/tEcrCPRPjXJzQYTbUXhO9sToHDr2r
         VNSBIgY2i3PpjTxAF0XgNIBWlZ6Oa778ndbWG4aFL2qyn++LWkqHBInAamzm+zxOASqJ
         TSIgy9Op6f+gTZPqaWu9E9XQc1wPSQ5dGF8tW9lWSoCJiKndnJ99GXN6xD1cjivL8r2g
         4ooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776778234; x=1777383034;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YIhCcv01X0hJw39QIV6zhnXwa3BDMNZiyBozWH7UvxY=;
        b=VOoFQztcoIOJF3tq0uWcDyMPhjXZq8QewOYPzKuMaOBhFFDvdG/qFPUm56sNVPrxH3
         Cz3gQda9werwCqXMpbbKLmsVe3aGg8qsoWX/6SMO5N0BsN6dVlOn+N/px6qhWfTPv6Ed
         bmghsmAwGBDBmUnn32SsqJW0WzYlcwMcgB+iLeZKlbvvLhCtBeWW0A0jptQW2iXh3Ft/
         +HzYAW4GDeqzGB+KNUWkiqdK5ClvyWp6vbAlwT2bDavUpIhH0ZXfD1inOAQuEtebZ5rc
         w6GKPf19p9RYBjjY4iBgir974j0UL5Jqy6PuGLyXq5ofsbyKmdiSkcOrKpp5FoqlqMO9
         2P+A==
X-Forwarded-Encrypted: i=1; AFNElJ/N9vrreIgf9Koaxs/O95GjeJ4VgdJOi1gBDVxUe4I4Va3g/DWDyPysAjAerS8QPTCtq3I7IRY1iBM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+aZkvPUPQB2jHoWYHX5++YF7DFiaBnZgxCXIO1nezMQ4/Wyq5
	tSe+Rzi2ugdjg1/+Hj3cfVmTojjDiq5jQreQzg95ukHzutHV/rQedTYPzyRUU+zOrbQb5XWpakC
	W9UMwb0mhzdW6uBB+1pSEIV/i/JIXI5xfgvqec2yvubdgToA4X8TSRIdPyN9KLDk8R1fk
X-Gm-Gg: AeBDieugMIPScPG9j9nT5vJV73Avsjwt/x8Lckafq+UaXGPmTXeYNVppvhySQdHuo2W
	JOQSKwOwzk0vTrAGJ6ilnVoMKbOGp8hE9dlAjxSntzS+PihUSmeQ9KMBS/MI84Gv/T2cceyLDOB
	2jSGGocHBOMrBPZGXgxwX4JYO2I4c8cBfpw49gH4ZigL9P4+JrgNh+vPXDUuB0YtlSgoofuaqrS
	bestGlouofvYpWn/YxUQgsA5XG8gRpAgaNi/tIoDWV0oLh01ObTHPoZThMwpkOQP7i15b1r58xH
	XQHSruH3YEFGkh3xDC5nZw/Uqvfku8TMjZSBRlybjqSQfbeQjNGiWnEkJWfQDTqfovDVIhzWa2o
	NQEEwwJkbzSZTMX8U9UVwXDxUJTUybTQNjamAGDrgAOuyes/e8am45vQJ7P18lew5M5IB7BvG8r
	M=
X-Received: by 2002:a05:7301:168a:b0:2d6:78af:ef5f with SMTP id 5a478bee46e88-2e464ea6ee1mr8498936eec.3.1776778228651;
        Tue, 21 Apr 2026 06:30:28 -0700 (PDT)
X-Received: by 2002:a05:7301:168a:b0:2d6:78af:ef5f with SMTP id 5a478bee46e88-2e464ea6ee1mr8498884eec.3.1776778227597;
        Tue, 21 Apr 2026 06:30:27 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53d8b3dd9sm18840783eec.27.2026.04.21.06.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 06:30:27 -0700 (PDT)
Date: Tue, 21 Apr 2026 21:30:21 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document
 Nord QMP UFS PHY
Message-ID: <aed77cSNTF87y8IX@QCOM-aGQu4IUr3Y>
References: <20260420074942.1250414-1-shengchao.guo@oss.qualcomm.com>
 <faa58e87-fb6f-4598-bfc4-b48b93bd0400@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <faa58e87-fb6f-4598-bfc4-b48b93bd0400@kernel.org>
X-Authority-Analysis: v=2.4 cv=KfbidwYD c=1 sm=1 tr=0 ts=69e77bfa cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=upPKRX-Ir4GeM2YDT2AA:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: HL15lnHlZGBwJL14WN_EhHwWSuuzSMSG
X-Proofpoint-GUID: HL15lnHlZGBwJL14WN_EhHwWSuuzSMSG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDEzNSBTYWx0ZWRfX9UHAR8whqLWu
 pdsFUEoBug4qMUQEKR1rTK6GoeYYSq8MtPwNUZjsPUBA3VJ7N00hqgWJkPZ1wxPYwrzKKsIUpbi
 MN1WK9D5U2OSriGiQbawrkFPLhEhzwLfLGKTPIX5cytbxoWSAZUYy1DN9MuvPwikD/Qm05F3MmS
 9Kk7nCTzHl5vueNJtO65rLmQEksU2PsnH7ckAUL861+q0wcITAe0g6ZIQImnPpp3Mba9/ytARHY
 zAT0nr0+wePTCijFkRw8JNkoMxA/PhQ6S1bbDB/ck1p0oRsCrUE6KIoJ8iOf9yDA47n4U7xvO+a
 6n8Q0BEYrx56j/HklmVx9dXKf/g1trY0yVQITJJs3+raDfYCMxJeqrdE8pIP0mVXIYxbpbClt6d
 o1rot1F0YWoPenTCyywY/SbuiqImh0dSWF40LLCJWpkqymLejC8dIW7XfXMgYZpc77CRP04taoL
 nJbiWn17K1UzKgW9T6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_02,2026-04-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_063035_949959_4E6517F6 
X-CRM114-Status: GOOD (  17.55  )
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

On Mon, Apr 20, 2026 at 10:21:39AM +0200, Krzysztof Kozlowski wrote:
> On 20/04/2026 09:49, Shawn Guo wrote:
> > Add compatible for QMP UFS PHY on Qualcomm Nord SoC with a fallback
> > on qcom,sm8650-qmp-ufs-phy.
> > 
> > Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > index 9616c736b6d4..cc3457d6aa3b 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > @@ -36,6 +36,10 @@ properties:
> >            - enum:
> >                - qcom,kaanapali-qmp-ufs-phy
> >            - const: qcom,sm8750-qmp-ufs-phy
> > +      - items:
> > +          - enum:
> > +              - qcom,nord-qmp-ufs-phy
> > +          - const: qcom,sm8650-qmp-ufs-phy
> 
> You do not need new entry, especially placed in incorrect order. Sort it
> and then you will see that you just duplicated it.

Indeed!  I missed that.  Thanks Krzysztof!

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E5DC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMFMNcVqRc4smIfU+b9zO2CP146RAbHGUfyq0CgHe10=; b=vv9fdFQ7cYXqt3
	ZWPwgPYWx2Y8T8DU1YbdpC/auv6k618nZzvdOpuoVrlLQRNFvAS8cVE0ukkmmQopHDW4Fvf7PGXBy
	nskxxkbArV5IO7i5+V+R2pUa9bP0/rw2rTvbAoVkjyQbj5vpprKmOv4JbFpyTlVjLpK1jHSwdWrLF
	0cz/sl38VLcs7c3Crk89ahv7McrmedI5UlUYiPFq3mVC6bwptRklDkQDlGDJf9dNyQl9bcs8wQD6k
	TF34UTliF8sn8r4CNFsUai1cdiATEnRZp7BY18xue/QZipZdGpr69CGNtUz/TE8uAPrUzKofsL1no
	LIYqgHnwbtznWTYyREFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0wG-00000007QTh-40Z7;
	Wed, 29 Jul 2026 09:51:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0wE-00000007QQP-2jsO
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 09:51:00 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T7fWPZ1054081
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:50:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dY/kYFuWXoOZQdsHmp4MpeQe
	J9QhTJRZK/WeF4pyjQ8=; b=BwJF9uFEeYb9Tu/qIo4IpK6zN5hTYQeKZKbNrzj6
	rwA+dikxzgC5G3++g9aU50K/nnLHju82AjetKWSvHHj98zEzZzSUTx7V5Qm0lAnw
	Te6xEYcgZ3p7mL2TsTq3Kyg6tvBgx6xHRDIs4V5/AXsDfuphmboKezkArrgmAivn
	QQ4BX+aFjCHiMMR9p0wD2ihRWYa+jHkJ6VVVHosBfPva0rukdSy5aLE9S+hP45nl
	VmzlxRInEoc2YIfNlt35nBo2WcVcbcrmbQ3duV2qcQf9UVTBQuVzyXEBTwtYxVXt
	/xvjKN9KOo5wBtUFgOpWbWnxLpY70cnlOmj4w2042jcdGw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqa301aaw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:50:57 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-ca124bf0189so1505422a12.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 02:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785318657; x=1785923457; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dY/kYFuWXoOZQdsHmp4MpeQeJ9QhTJRZK/WeF4pyjQ8=;
        b=Hk6oBst1Pr/ISnc/DhTL0wc5ltHRAglZJCCjj2wuFPr+miLpNm4tEIMuWs/weAWHTG
         xIUd26T/2JDMzRlEJ/xAA2wMqGcUx5H/Yff1jAlLw0UXBH1sRVrVEZnkooveOn68cst+
         +m3jHars0IAEdkSFGs8VjyRglZSeQjmLTnS3AjjAset/g5bpsGGzgqfwDXLkD+Zu1w2a
         VYgo7NOjOQnU4ntdRwZuESBqXOcNrV7KK6atXb4e9C6Vn/SXyirpN10ZP4oCuo+BefLn
         tL1gTE+FJrs+RZ6n2OZqczJT/lNT5APjUSR9hBJ/Rq6VHJSf1CMlRJfj8q46uM9i9m2C
         AuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785318657; x=1785923457;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dY/kYFuWXoOZQdsHmp4MpeQeJ9QhTJRZK/WeF4pyjQ8=;
        b=n6TX7Uq+hTc6AXFjI963hbNrrX4kvdgfe32YpfwHk94Uo2MoDlcHWWcP9Q1bOizrts
         J47qqYH6/uWyEY3IK239lz9ztlq9Erbqp8I70LwfRgW41oyD3/V4dRgUiGeEMXX11GNv
         BktGy3OP77XePmueNNFo8i1y8pxl6PrVBwiZa1q+Bejrq8CzQwPqFQHYhiNlkiggOLBQ
         5Fgr1lOkDtZUSk3GNiCjIei5Tm+5PQb87bbtcxVJJbTkVk7aazJAUDl2P7zjIvjgsFie
         ElhZ3sC5KAMYEUpEGHXhDcFZLU8LGC+xxXXMpeu/uFwNa74j6fQs+GJWwDTWzQuscguH
         l0sg==
X-Forwarded-Encrypted: i=1; AHgh+RrP+XiuucUMZdPnkmueoKQhurVW4W6ndMRFR5aniDoJhp4y3HcHuxqL4+CEFRiTdTbpOYU3aIqnbV8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSzkcW1vwTlWMZmGgsnDv89LMNg8DDHqem+fnmhJJeEDjZKakz
	0IxPA5TxApZNKriS7CVMG0gG2aXyTX2KfFkm9mWcjNr675N1k9/uLK2b8XmmGOq00eFzRTA9NN1
	VQYmBL/4vO4zSx79v3gYoBpUCTF55mANZCY6wN8xh/Q8nC13IAESKOJAv7FePkqQmPANb
X-Gm-Gg: AR+sD1159h+aRpipF0rdKmIdmVmg6dzj5db9tYyIz1pe5G/aOwjWbebE8/tNGDe3IAP
	YkJBKNtPC7HFb9VwKe50uTx+dm0cdZ8ec+D1mEYrdadI36MRhsgsYwzgBRz9DAMNXYbV3e1UbHp
	v+pk6wypFRmGFm+1MonWaLk5oyj4w50Srlig6PB+Ixm6Iq+YT+G0shWXhyirBGNda0AlQxja7SM
	IPjbLvC3KOoQ6oNj+QLQjiwv2vSm7IpWqJDHl/CFDJ/Cc4xA7r3tH7WlfNGjgo52qgLktDsBAy9
	SGiTw9EZkwsp701ImyTzJS2VP7IDmmqVeh/toKqfvj7/0vQ8YsuABtELHM0YYtHAj/D+znizgZr
	EUAojhg7KWWllm/g7UyINrnDxPNSyMifMPe0hQyC43KC7Wok=
X-Received: by 2002:a17:902:eccc:b0:2cf:4c37:d955 with SMTP id d9443c01a7336-2d026793097mr17395815ad.27.1785318656524;
        Wed, 29 Jul 2026 02:50:56 -0700 (PDT)
X-Received: by 2002:a17:902:eccc:b0:2cf:4c37:d955 with SMTP id d9443c01a7336-2d026793097mr17395535ad.27.1785318656074;
        Wed, 29 Jul 2026 02:50:56 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d022bf8880sm8677205ad.66.2026.07.29.02.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 02:50:55 -0700 (PDT)
Date: Wed, 29 Jul 2026 02:50:53 -0700
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
Message-ID: <amnM/dVT3tZeR4h7@hu-qianyu-lv.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
 <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
 <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
 <amnDqhTpMffP9M1w@hu-qianyu-lv.qualcomm.com>
 <cc185dfa-4271-4c63-89a9-05b8990db242@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc185dfa-4271-4c63-89a9-05b8990db242@oss.qualcomm.com>
X-Proofpoint-GUID: fidwIjz2RqOIQD7jXNAfiCVpgc-hNq1x
X-Authority-Analysis: v=2.4 cv=EME2FVZC c=1 sm=1 tr=0 ts=6a69cd01 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6I5spZTCEmWeGOySesgA:9 a=CjuIK1q_8ugA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDA4MCBTYWx0ZWRfX6J5jJEPf8/zW
 S/x5dpA4M5Ro08fMPVzUNPk7q7FwttJw+xtj/HswgWSlpz6RpIHsR4pbCnL6wC4bBKXeyRBWCE3
 pQ1Nfb09z2zKUVh11btJPF5cVRRxMIU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDA4MCBTYWx0ZWRfX6eoMBjL3rV2X
 4WtFSpya7a3VoTmP3wAkC+vL5JQRN9mT0Tx4zsutrLK7mUHf89N9sK9CPYSKAGGEFw6eSfaS/po
 ys/Gi4wnL6UpDMZ7cBSSJjRFWFdNh2snb55rtHVK8eHFG7qca6MW01hUBiDGVThI3JrVWrXtACf
 Uo6BOXwY1o0qJmWXODeVDRK2jM2OzAjn6vajPGGG3+J3yq55H0JBSD495ZdCJ97g7mtAXoAxky4
 RVi7wc5+jWOaH3UpazEDkrWrMKjfLcN2yzLiNgvcFkBo1H8YDV30UjlAnW1BP0N2USujDtsfPk5
 jKWrzuY1fZGqIrS18HGdKiMIBxbRrUAkd8EfqLv0YE8hHGA99eUFdhObuRP/GekeyhEdBOwkrE0
 Ksr0YQWsCjFaCbmHH28EMc7TwOfGihLhpaekAyPkApoOqCiRV80QzE2gbkXvLdVXVvxgmqx9XGT
 MDQR4ADyRG2Pba7decw==
X-Proofpoint-ORIG-GUID: fidwIjz2RqOIQD7jXNAfiCVpgc-hNq1x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_03,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_025058_812947_F1D6DD2F 
X-CRM114-Status: GOOD (  25.54  )
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

On Wed, Jul 29, 2026 at 11:22:45AM +0200, Konrad Dybcio wrote:
> On 7/29/26 11:11 AM, Qiang Yu wrote:
> > On Wed, Jul 29, 2026 at 10:30:27AM +0200, Konrad Dybcio wrote:
> >> On 7/29/26 8:45 AM, Qiang Yu wrote:
> >>> On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
> >>>> On 7/24/26 12:01 PM, Qiang Yu wrote:
> >>>>> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
> >>>>> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
> >>>>> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
> >>>>>
> >>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
> >>>>>  1 file changed, 8 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> index 6125617de82a..0aae613a33ad 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> @@ -28,3 +28,11 @@ &mdss_dp1 {
> >>>>>  &mdss_dp1_out {
> >>>>>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >>>>>  };
> >>>>> +
> >>>>> +&pcie3_phy {
> >>>>> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> >>>>> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> >>>>> +
> >>>>> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> >>>>> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
> >>>>
> >>>> I'm guessing you also meant to enable it here
> >>>
> >>> No, we need to keep it as disabled because pcie3b is not enabled by
> >>> default on glymur crd.
> >>>
> >>> See the fake pcie3b_phy be dropped, it is disabled
> >>> https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/
> >>
> >> I think there are SKUs with dual-NVMe that use it
> > 
> > But the pcie3b controller node is also disabled, should I enable it in
> > this series?
> 
> Do we know what happens if UEFI sets this to x8-mode? (is that even

UEFI will not set it two x8 mode on crd.

> a concern on CRDs specifically though?) Will the second controller fail
> to probe and become a sync_state hog?

PCIe3b is not enabled in UEFI by default, if we enable it here, we will
see probe fail.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

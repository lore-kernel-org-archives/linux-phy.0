Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0823FC3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCSt0hmvxguF5nQnnHQWuvUxsRKWxmF7BaSSDKZKlg0=; b=ibCn4yH9L6nV2L
	IeQrGRgANmbR3cRtIi1n7NBXAWVI1CAHEFWZSHjNrCQCyWOf/CkZpqJj9gfb0LanTpD1WOx5AUqc6
	xkk/GTrlULChGV8OnnAksnG3bqFgri7yycBWSJr6eNwvEUe6S2uB9PmrFZhMCRvZRBxysEsLQlT24
	qIz8Zsb17pQ93uIuKb7RFJXrVm3ewSi05wZpCKGW/WJsY8mvgSY5im2VKcdpqTLX5gHrIuQUDkOcC
	rYaDX3ygG/678SKmQP/IIq3//7KcVWHvCkstzFjFViHVkOBMmVrPHjAP/aLNOGby8GpH85KO0yyPA
	QtwaTTl/iCu7G/8CZNaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEtl-0000000CyGs-30cz;
	Wed, 28 May 2025 11:24:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKErq-0000000Cy3O-1e4B
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 11:22:43 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S6pIbi023930
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:22:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IALrJT9gN0Nv75u/D0mhXCVy
	adCO3D9DxeScc8A6Lyc=; b=eIvQd3LKJ0Wtx691dbEd8GqLv4cMyzJ754BkwII1
	iP/4rNCSkRVMrlb/FcETNCGODScA8rSrmgJYU3os7SYJLaLeG38ngqmu5VG7iBav
	WwbgsUZgVPEB/rNYzxF0lwzDW18/Rih6xX6fMyavY0PhT0bXSmqofcmjOKOnS6P6
	dZdxnu0BBLixTYtmnFiJOL4ZiEqxCjJuttKo96GbN78+3UEiBMmRoHxv/2jn6YCa
	lXC+Bp+7RtAL+vUvQ8ybUv0/d1FC7VJegfFya13HvY2JqV+gN1MB7ip/R+O+KrF1
	wyX8mn114+72cwwOLM44wuDiVsEm4KE6ebLD9CjhkIaM7g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79pa2e8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:22:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c790dc38b4so140789085a.0
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431360; x=1749036160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IALrJT9gN0Nv75u/D0mhXCVyadCO3D9DxeScc8A6Lyc=;
        b=K3dtQPe38+l4R2R1/qp8UJAKHOqmplUR5V3DolYAyDwJ1h0k6vPaQLCpueI7T8U8ft
         8nWGDqUHXB6twLIiObgmMVCUgVSGC/NU/rHV9PtC0QeCJ8JgDG4v5XmMztPQww1acTf/
         V7pwYKFLzqIDeJHLTTykXrgVrWEx7SWgWzP/pPYBcgxnfHzDFQndllC/WlBelIr92x4O
         nwfHl1wA3q0ugbIxy8d9QWm+KFGkGrau1DfcxLP/Cb+GWAGgyRuAbB/TOuapKcU7r4Oh
         y8hI3A4R82wvmg23v5+uWcLQn3ldWX8mZlRlqn0Mk4xTZXePhfyKJ1UV1rvdaERsx+Ol
         fVVw==
X-Forwarded-Encrypted: i=1; AJvYcCURaK+OmKlkTrW6EbdcWzFkj3LA1lcWKCu2YxP4oY01NQQcD5Mw1Ih6A7G88ufeXN8LNejTzaaXHE8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY+YJGau7x9IMySL3bOeeV23D2OlvGXcfPJfoCESPIK0cZ2j30
	B+a3tSLtZMsiC2VHwybrEjRaHyDyd3P23Wd7IKLeD2aROW/BkpvsToAOeJ+9ZBlXOvn6ikgXycO
	89WO8iaNZOsQiAg9X8ZWJc2UkNI9hKtranrXJBwAjVpATlR927ScPIH07eVQIhpb3YJcD
X-Gm-Gg: ASbGnctiOotLad8SL/GnmpRgpMdODURXzQyaRBtYxrUC102bnFJVL8XkiJp+RonptGZ
	9BBhV2MudZBmytEoG4NkgS1ebJzhA+gmp1xo3OVnDMlnagG9Q2oSevsn0M7bf1aoXwlqXcF2AzZ
	fd1dWWV43QvKpteu1fkpQX/U5Aem5ghcsbVsRZbe9ayuT7b+NnGmfz0LJUMKIlHTTonikn6l63p
	5yEOdH6yWU7BP6YRzfPSJQEyG2c5BrKh+1C9frOmuSpNzEewrnuVYCIEnU9FdBwSIaQQtbcq7Pu
	Nohuh/vhGkwxcNb1teyBMmhsq/+8v8xA/sEdpCqS6vi8TmCnSl/OaRQpOlMOi/eOKR7GlTlM7MM
	=
X-Received: by 2002:a05:620a:400c:b0:7c9:230f:904a with SMTP id af79cd13be357-7cf06d5427amr516045685a.14.1748431360554;
        Wed, 28 May 2025 04:22:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXLg/gpflaCJRIzZeb/ImyqjQZjMx4g13E+ocdgg2gQGAbAV0phsv/rmyFO+/PGEq+8VfqdA==
X-Received: by 2002:a05:620a:400c:b0:7c9:230f:904a with SMTP id af79cd13be357-7cf06d5427amr516042985a.14.1748431360133;
        Wed, 28 May 2025 04:22:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79f69878sm2035511fa.89.2025.05.28.04.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:22:39 -0700 (PDT)
Date: Wed, 28 May 2025 14:22:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
X-Proofpoint-GUID: C8plO4UR1s07PxP0j1a0wAtzpDVZbWS8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX34wnZy0OumAL
 Ex5ZYH83Bslply+9COdMZ6I15B5UXaIVdeFqWlK89vTEEmvbvyVGbbOSSHlTcC0g42CWbWHDRic
 gLty+myKxuXkFA0sC+f8k63r5AEQBmRwnYkmq0/yIDREEW+VUJXBa7TfW8AcKFRoov9FzXtTrAL
 t32aEh/4aDZ0bXwcrrXZZRUfdvdIvGzERLxZr0M1j9l3ZMME8xTip/WqIbzWICrDpPGtj2klbjg
 Z7cWwTHC0NaEVkmZSQN6S5SoAwemelGYoCLXw1SQ1Jfr4rPXHWXsM1n/Exb3mdRRI/w+knrOhbe
 VCJ45oIsZnV+WyiEvLbS+Z6JUa2BtgjCziyAomlerCXf7FnzrD2bFusjQ2QKDvBiL/HgjXS4kVI
 4tbL6x4whi18xFnXtiWfS5bFmfMZCjctPMDVH4LBZmwaEEZiH+pbyPCgSZBqLToM5zSgUKRJ
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6836f201 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=InULQaKO5j1EUn40nVYA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: C8plO4UR1s07PxP0j1a0wAtzpDVZbWS8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=655 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_042242_435733_D9FE5955 
X-CRM114-Status: GOOD (  30.78  )
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

On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
> >> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> >>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> >>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>
> >>>> The DisplayPort phy should be left enabled if is still powered on
> >>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>> PHY is not powered off.
> >>>
> >>> This series doesn't seem to solve the USB side of a problem. When the
> >>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> >>> clock, so it needs to be switched to the USB-2 mode.
> >>
> >> I didn't find issues with that on X13s.. Not sure if it's related, but
> >> on the SL7, after plugging in a 4ln DP connection, I need to plug in
> >> the USB thumb drive twice for the first time (only in that sequence)
> > 
> > Might be.
> > 
> >> But there's nothing interesting in dmesg and the phy seems to be
> >> programmed with the same values on both the initial and the subsequent
> >> working plug-in
> > 
> > Please try using a DP dongle with USB 2 passthrough (there are some).
> > Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> > devices. Would you be able to see the USB device on a bus?
> 
> I only have a dongle with both display and usb that does 2ln dp
> (I tested 4ln dp on a type-c display that I don't think has a hub)
> 
> USB3 - yes, USB2 - no (but it works after a replug)
> 
> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
> at runtime?

I think so.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

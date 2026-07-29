Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BF2C54F52
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 09:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+U+emk31zp5I+55dLu6yh67TlbNyVklPEqu1VTzFbY=; b=kcK/KpNFLS4Ibb
	xG55vbg1tJVAwGLWolFYeQpOLVffGzjQ02jgvucPZ3MkX2nEWlW5BWEE2V8f4hT7IkKqrfP8likvx
	kVwE0AxpcKIxY//wVa/3r/u8lA3TUaY+tZlGkql4QaV5ycWRUumyalWGGcHzHsFfvW1KqJQIm9J5v
	YY/NhQPD3p700dV8iP+YA9LEan2Oqu0IaTdX1Ol8BB0hz7zqljJT0rDb59dsFk59QAFuOWFx8DxWc
	F60MZhELK9qKUpm10TOSffmKsemRrbMQ21rze1XOp7i+5uIkBsgCG3Zxb7lNTA23yH9Xrq9RiqNsv
	tXrS5505HukOdlD6i81w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0V3-00000007M2U-48Lt;
	Wed, 29 Jul 2026 09:22:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0V1-00000007M1f-1NY4
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 09:22:52 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T7fALp683471
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:22:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b5Qvae2kNU+ivL5Nm8P6mevBBXRqOaNXaPm9IqHOU8U=; b=dNSC7E8UP8sGJ+YN
	Q2lL7qEnNQ8JcVbTATsd79Cp8vSsb0Fm9FoRVfSAb2Bm4tac+239j9TSzGcIdsBG
	Zy7hqXFcAeZlXmZa4y7w5x9lvERHOKGoIyYrfzmXPurPDSt6hi6JhsiM7CgBEbHI
	Ol7Iwfdgk81Z/pO/wwsxx0NOvyGj7ENKcu/cmuS+kt/yZATX0HBKGYEMatyAZVl5
	f/tPpT0LqZB/WZ9BCF2OV5Rp7SoNKN4T16s89BMALu85rNwhR1A843dxpBEql/jl
	u4NeLwLG0J3JvSyA8VqLlmuWKzvFC5SOpE32NZKyoG/bEudnXSH1mFIrVNn4upd1
	oSfFfQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqbn1rufq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 09:22:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c07313be5so1446521cf.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 02:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785316970; x=1785921770; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=b5Qvae2kNU+ivL5Nm8P6mevBBXRqOaNXaPm9IqHOU8U=;
        b=flwxbcZ6duZfjPXErytZU1RZFYgdzsuTJBCS1dqFe0wc82AcPZE4TY/L2W6z26Hr+h
         PllvUE/KcWK7Ct1MDne/AH9b5sq/6AkqmViHZcVInrGhzvPjgWbabV/4kwlVTrUAZxKB
         Yvu0iT57OvTEoc2/Fhmp2biGV0rSMKzwgFQEfj5Vx8qmtESyldfIVezLuig53rvM6NcJ
         gNujaSA35LQAsPbsglp4oXegWeZOQhp+a0q4Dgxy2GdFGsEUPTbrXwyf9lamB8UmdBwH
         LogS3K1NjEHjxBCxfX1z8c6V3jh2utPlA0CTtaySmQWf2iKLeyqAkwEHI9UKeegZ3Run
         +IlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785316970; x=1785921770;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=b5Qvae2kNU+ivL5Nm8P6mevBBXRqOaNXaPm9IqHOU8U=;
        b=IZ5+InY+BAJ4mvsd4FX471xk8FLQenZEMtavdcN3x2dqj+l5T7bd7vZVPitPFl9EMK
         iEvGwXAxqPK9dtAWYIWFkt8KJjR/4eNRpBLw03E/1U1ToTlp9kEMkKtlBkkflneYBgDN
         N3LdF0dy7MDfweYvkXWQ1dE1GVLZuKGTPCEAs4UUQaFzH2w4bg5/BwfhWjvjZ6/C7SME
         px5l1z5CoYE8kVh5IBp1NyI165dZowwF7EpJHQpn8A8L9PATYqnIiWq4kLdKOgVFar4i
         fPlXxzzZPhmW2J4ejryhCvDqKstFxmmBxkaDAvJvjs4wh1zPF21K8wGuvNDv/NhflCwz
         QH+A==
X-Forwarded-Encrypted: i=1; AHgh+Rop4Ibi5RCVm0X16HhFegbTiUEJ/lA9IuoxjiaP0ve62gfkdQmvoTxAcG6ViWkYklA54p5kBamhb3Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yweo2CTXoY1omAZX43sb4P9yDU1H3sp72PkLUwdIMFvBUuK42FC
	oFGBGidum4wZREk37tZq/CIwunv0g7fIcYY7qCYIY8yHmE73IGVgqn0kOPdcm9pCSmHWz4ljw7P
	g/+YkXjpXR+gd/etkNdj9UEnauvhlBH3CazfN6d3esv800nlIe6y2qiC4XS3Oo00CECATweHy6q
	n9
X-Gm-Gg: AR+sD11JOvPYFC7CbtyacxfLJ3WqFcM2bTBa8by/Lvpm0pjZIdE8MplCsF8Pm5zvjCL
	U0TLl0hqbkSY3GDkClUmrgyLPzAud2tGNWWDyFomKs8SEQZsGrvfLRaE/Mjb0zr1RXC+Mv0SkLo
	G2gDpRfQaN5EhbqeuxSdMrAQMYSdjgTK3k9+BNdzhSC8oop4BOYRAGqbhNjwKypxZZundexKSsz
	JCh75UQhQ1arLg59EO94dlXxVZUKKOvxU3OcVDBtN49yXsou9BRycNQ1docTvXVLtVz2iyhG7nh
	ld5GjxGt9016sdZbkQ3W2QfPCivafGvw4bQ5vFAF4iyyc7ng/20KHIivyxlPd6gvDdHbjPlNBBs
	WM0//kc6ffMJgJqPOvOFd7Bya
X-Received: by 2002:a05:620a:2729:b0:92b:55d5:ba3 with SMTP id af79cd13be357-93302493325mr555430185a.0.1785316969800;
        Wed, 29 Jul 2026 02:22:49 -0700 (PDT)
X-Received: by 2002:a05:620a:2729:b0:92b:55d5:ba3 with SMTP id af79cd13be357-93302493325mr555427085a.0.1785316969379;
        Wed, 29 Jul 2026 02:22:49 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a050c60154sm586218a12.24.2026.07.29.02.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 02:22:48 -0700 (PDT)
Message-ID: <cc185dfa-4271-4c63-89a9-05b8990db242@oss.qualcomm.com>
Date: Wed, 29 Jul 2026 11:22:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
 <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
 <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
 <amnDqhTpMffP9M1w@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <amnDqhTpMffP9M1w@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDA3NiBTYWx0ZWRfX66H6SpVUvSsB
 Z7E0NCNbAMGDcvfz1ODGfPJcALoKG0neuFkeTzYzoepxp02gTLYD7/ZlwAFBjmUqTPTx+5T+GF4
 ZJIFZDpYdujOFJcxj73XhAm/pu3zT94=
X-Proofpoint-ORIG-GUID: 7PBWNQrvGMM5FkjQtR-LdWICZuiPssJ3
X-Authority-Analysis: v=2.4 cv=csCrVV4i c=1 sm=1 tr=0 ts=6a69c66a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=EFN1Nc5OCtOC5hJ9hqwA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDA3NiBTYWx0ZWRfX+s/CwXVGoLo7
 so9PRiCQqoSUE6qFhrEJNcfQqPR71CzTSvowAw2DRFZWufXwzbHj3d4TtyoXVydDPNMrVur/XG8
 EP93pxJAfJcz7IAPoH19ENI8hFX0xi4vVcJDnbhP7YI4VLMWqfJHBmxEkmQjk/g+8seFeGyVFI9
 BwJUI0sVfPYhmFAOCCEmrcdNkC0IVmsl0YWH8vQXvGIvGfOSRGqCssYEk3p7Gc3nA7sd9k6m02Y
 Pn4GzowPrgthC/Zhw/6Cu7jHFPwC1zGjGiankyld0GjLhXNAtO+io6f9h/xAhzm27wOVhqGoYs9
 AqouKeWvC8FcsFCiUuivNHIDa+0ubmCmjUAMsuKN2o+0/NvJi/UC77r7q/GwTyjfuuahQ07MwM2
 C4k19tFUq/ViWwH9P0Y5yFgT8dO/v9zgPS4sGinLiTcNzpiBcu52Xo8X1N6VZ5j/WR/0EkjlAeY
 u9Q4xNtwby8Bu6AsmVg==
X-Proofpoint-GUID: 7PBWNQrvGMM5FkjQtR-LdWICZuiPssJ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_03,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_022251_377140_EA010651 
X-CRM114-Status: GOOD (  16.95  )
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

On 7/29/26 11:11 AM, Qiang Yu wrote:
> On Wed, Jul 29, 2026 at 10:30:27AM +0200, Konrad Dybcio wrote:
>> On 7/29/26 8:45 AM, Qiang Yu wrote:
>>> On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
>>>> On 7/24/26 12:01 PM, Qiang Yu wrote:
>>>>> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
>>>>> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
>>>>> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
>>>>>
>>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
>>>>>  1 file changed, 8 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> index 6125617de82a..0aae613a33ad 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> @@ -28,3 +28,11 @@ &mdss_dp1 {
>>>>>  &mdss_dp1_out {
>>>>>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>>>>  };
>>>>> +
>>>>> +&pcie3_phy {
>>>>> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
>>>>> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
>>>>> +
>>>>> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
>>>>> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
>>>>
>>>> I'm guessing you also meant to enable it here
>>>
>>> No, we need to keep it as disabled because pcie3b is not enabled by
>>> default on glymur crd.
>>>
>>> See the fake pcie3b_phy be dropped, it is disabled
>>> https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/
>>
>> I think there are SKUs with dual-NVMe that use it
> 
> But the pcie3b controller node is also disabled, should I enable it in
> this series?

Do we know what happens if UEFI sets this to x8-mode? (is that even
a concern on CRDs specifically though?) Will the second controller fail
to probe and become a sync_state hog?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

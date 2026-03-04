Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B97DEB7EBC
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 10:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7Kdl8Cyztn2eiaE2NFmeKUUdnWqp3NeAymn2FeQd60=; b=FNf9PhS2Gxs81w
	WSrG+3yxa9v34pCfyAfAZjcdY5tICBk2nfVTp7+tJcTG614iSsO17hLEkk+PB0iOD2khzfFoJj5ly
	lkKkLTkySu20nQ/Az2+IZUs3S78qFlgND6fGljWq/aUtKNOwbiB7gtu6ODO7ULABhcaZx1JCluEAx
	JpBhMOZZXg4oreB40482Syu3Jz9XIM2DWclAXmUAC0tbDDOiPVzNq++qK9FVpWcs9jwvZBXOif77A
	Ba6pSl+pyJSnJzV5iLA0MKHsttniRKDiQKO/znq/XZT9GGRF0QkrtD1y52UWUDNA1ESxqcy6PQF71
	9+VV6I90nIueGF2k3aJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjWy-0000000GzqO-0GYB;
	Wed, 04 Mar 2026 10:32:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjWv-0000000Gzq3-1rSZ
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 10:32:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SWQM152585
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 10:32:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kD/fzWEvkZUb0Aeqg8CKGCrD5Hp3noy4/2L2GfbrChM=; b=MWP4kULZIakaZCeO
	zhzxs6HaMnpq6PTEhvzCmOWcBPwLWJDftweYgysUed37fsAXuwVfCd2oBjoLFi1B
	T6XXLOdfbetJbHBfoVgiKhY21BGQQ2ED0UL02T6p41/FjXU8y/cUQvh8K/rc55YZ
	TMiFTvFp1XjDViTIM6PZrwuuzYM0ksMjSE9N1NdMmDftTJIepgfkkLvoAN/9zJHE
	Myh+Sj9qaM1jKGtoNULr/NnOH+OqDSlduGB3RBhH+vwFA3LcE/6R/OJ2r7ah6MKN
	SJ2/13hV4mrq+XaaVMg9l32dYsukJenGzA32E2uJPZ6BljQZrqQbO8iKVlFsVccs
	PGSNNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvk9c7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 10:32:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb50dfd542so523062485a.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 02:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772620355; x=1773225155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kD/fzWEvkZUb0Aeqg8CKGCrD5Hp3noy4/2L2GfbrChM=;
        b=Ash1LbaR7T7FrPt8viqTBGuoPVrRvJ2ke9Yi0HrCyxbE54DgejMymi9hqFKffD31X/
         Gi+75BiuMRn8cHUweYC/cp9Eqdw/GtF1YL4B5nlIHED5nyk+9w8smQIGZ6Rn3YD4fDEq
         cAYfwAS61qXKBWdf0OwCQyMXK99uuKbS07bspZh4OiAQmU+wMqEkDMuEepDUYlPe2f5Y
         5X5svT9EySwDe4ypqYwdAPWDwG0B466wkks1JUPbp+3BLpGuY8kwl3VHmbe0TUHASZDa
         4lds8A8qc7gH4+HzqwHo5KK8nNPnnxxgeJcg6qHs+IneH0eTrGD+TMrBvfrcS6Z6cddc
         jfxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772620355; x=1773225155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kD/fzWEvkZUb0Aeqg8CKGCrD5Hp3noy4/2L2GfbrChM=;
        b=YdR6LQCUnHWxT9Dv2n7oQiBw6oykK5vVVuzErSnNg6KwVk+uoxAnb769CptWytBe/B
         rbWtLbJGFMQ+CuT104PDcVbnJwuiZVaspfJkhdm68i1GEQ6aVa4JUT+nSkh/H/EGUFgd
         6QgiHi4VB6ihJzfygsB1q1wxcy/Am26cJON3SYhKtWyncHry2CJL9RWAwcujZ4OgzGbC
         9I4cAz382Tuc5siiCJUboLYYbEzFiQA+cQU8UBQaLF7uTUspgAl6HqydvTZ2/4DFan6T
         rQo+1BYGNua/ODlnyQRUzkdpMUMIEA7KOSaUh3f86Jk1Hv7lFz1KkjCZhG6gGpsElp/6
         xecA==
X-Forwarded-Encrypted: i=1; AJvYcCWu75hSzfFJnTZ2HIF1h4d2Z64mxiQd/HhyEggsA629/2BmyhiAaMtc8dxTQQfU0KcAcbpPqBqETkA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/nSoS5NinpjzUqVI9YpnQi2NVGj7ZoZZB7WRcxOF48DcGsFjt
	1wjqHxBn6ymtseSvuQ5V2MpzUBbNuT12zXSfEu9tEXfqZLxkMNZw3yjtZ8WmUTP1HzVs3WvLMk5
	8uPT05viCVOLyRYz8ld/Fag/g+2PxpxXHvXhfP6JGK6ImUhB+8kGXBOLveEFOUMOcfFOx
X-Gm-Gg: ATEYQzyCCdcjtrNiyIswIrnSwdEBB1EnLW0Wjx4TIWTD14L2VcICLLpmUJLhx2B68qh
	nGod8SySPTTPCTOD90n6dUMtwYPxU6DhWcVA7LQeL4X7T9lx8zitm2MjL2K4CTX6PQkF/J6+WNm
	Aiu4Pokq6hFDjTQYUFFTJluFTeXx4eCHT6NFpyZXCvtDun7drbGF928M/o0LdGOWMcSznYE+rvK
	E9xMQIlVejS65q/kG8OnloQ3mkNhnjxSZtRFk7Rf4Apx/eQ3mLrJkumkxSvLVtp9UPqORA6pftH
	4anhDTN082iwVlOFRFWtmYCT1R3ZbhH8YJyogKPS/AwjOonIpJBe/EcklgT5PnszytFO63PCMKb
	m/7FrTAFd0rtMVQjEVGjnZmDqCD6vc1B7N9KOmET36utWmVd9Bw7T0ip4NHCTHNnSAstIOsQn+Y
	/ZAMI=
X-Received: by 2002:a05:620a:46a4:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cd5af181b0mr131177485a.3.1772620355563;
        Wed, 04 Mar 2026 02:32:35 -0800 (PST)
X-Received: by 2002:a05:620a:46a4:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cd5af181b0mr131175785a.3.1772620354995;
        Wed, 04 Mar 2026 02:32:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660bf4d8249sm1224812a12.17.2026.03.04.02.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 02:32:34 -0800 (PST)
Message-ID: <5bdfb62f-c3d2-4705-a49c-8830577342f9@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:32:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@nxsw.ie>, Bryan O'Donoghue <bod@kernel.org>,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
 <04f22394-2dbb-4b7b-bce3-9b41ebfb7709@oss.qualcomm.com>
 <1082062b-87a7-4254-b5e7-2dc3769a619f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1082062b-87a7-4254-b5e7-2dc3769a619f@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA4MSBTYWx0ZWRfX3zrcCt038HES
 +VPa3mtldFrFnSNPPTTA8zSdoApvMaSrsPcBfkl5vcgITJZI452d4Z77z1BDxDtsiWuDSbK4Pay
 VFKJWFE5tvBgm8nXGv2QOT8tle24sBsrmPIiL5aJiYCbxsZP1aBkLdrd62s9EpIHkQMkpc4U67Y
 VHVWwhKlWhHM9L5/+0I0Od6gHp4L8gWtOTylkUNm6VPyTz+KRQO0tHLYBNjN3A328HfC0Ej/HF2
 xVjnbS5PwtY8JNSFzzyWrTq88ahdBpAWX9EXK0o3nsMytEapuKEhFIxPT7ZNAw/XrmX4HFqQxER
 x4+jlQ4JKg7CbM5+gFh9FGaME5zzfN8eDzSkDQE9JQmv9AGM26EWIXBssyB2VowQbyX+fnxhHDs
 bWYaIrCn7i+khIEaZutkEHYD1stOKmpaSn3OjadKCBqMz6W8Rapowm8MH6kOUeuFhj6tF0L3aaC
 jiuq2Bevu+eWoSpRgyQ==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a80a44 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JUammnum_Y0_sDqSRXIA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: fEEO5twj_iMDhLFQQzMVFbNea1owMW4i
X-Proofpoint-ORIG-GUID: fEEO5twj_iMDhLFQQzMVFbNea1owMW4i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_023237_528421_C4561E54 
X-CRM114-Status: GOOD (  11.55  )
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

On 3/3/26 3:56 PM, Bryan O'Donoghue wrote:
> On 03/03/2026 12:34, Konrad Dybcio wrote:
>> That depends on the use case.
>>
>> MXA is always-on (that's the 'A' in the name, as opposed to 'C'
>> for 'Collapsible'), but it's not always at the required performance
>> state (svs, nom, etc.). For some clock controllers specifically, there
>> is no need to put them into the picture, as the rail may be unconnected
>> altogether, or only used for some retention mechanisms (which only
>> require the rail to be enabled and nothing more)
> 
> Does this rail have an OPP table you can share ?

Camera clocks on X1 (mclks and the fixed PLL2, which is exclusively used
to derive MCLKs) that potentially depend on this rail (awaiting Taniya's
opinion on the other thread [1]) would only need LOWSVS_D1 for all of
their configurations (ftbl_cam_cc_mclk0_clk_src[])

i.e. let's wait for a definitive answer as there's a lot of layers..

[1] https://lore.kernel.org/linux-arm-msm/382725b5-1e72-44b2-b9ae-38aea1f7a976@oss.qualcomm.com/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

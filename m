Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6368D606A33F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 02:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G7lhv01R;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=YLWKz2pH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Lo43t65e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FI7iZ6rGq0rVUWzI8LpyXMvHl5QNiMbrsyxDW9jXYOs=; b=G7lhv01R6EhVa3rBKJbBxzEZDI
	kcE6JY3jD2sPz1Gz01dkvGvKa7bajswIKXciSLAPdGHTaGJr3UyABLl20I7LWzkxmnwHASHAyh+a4
	E0JG55gidsHrTzEpo2EDW5Q5RpNRDT6v6961pN4KYknB66wGoIkhH3VrW4ItyTCXvpcYK4KIVnAWG
	F7hKG6NQwmzh9VFncli6DBTDESaKNrjd2okR3DwaMtdoZA9leLWNbgQH5pzjGzBdVSGGySRQq0RIX
	F9bjEmWMfA0a/hXukqaMrYJtYKd0ZXjdF6y4ePmskT5lQwRsWN2KYPI99ZtlHyRMKW/K7vcFmk2C2
	mi6YgDtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmcs-00000000xZ6-0YUW;
	Mon, 16 Nov 2026 02:39:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmcp-00000000xYj-1bKX
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 02:39:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AG1L7uD3891647
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:39:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F2MkkOjtOBMugVy6AnNn+LItc3X/brWtifolQLWYx2o=; b=YLWKz2pH5QwPDe6W
	iem3B/1wBS7jDUWVIf/dQP57tMDzV0ZQ0FsCjVxQ58kQfNzmK8rCic+0V/Wce836
	a3zUO2XBuEJ9Hnboo6n81rpxC3roa+S3lIPhxCWFawqLInL64DU3Yz0qz56uiUiT
	h4nJmPvREgPVTand+c2hVc6lUi+Lz9/jH3F7TjtbXfznaj04D21X21tbAPYNk8Hv
	DJo/n38Vv885v6wAirHw7n5A9pImQz5Eb8QIGScgzEqi/hFEs7BnKCw/Vrqxq7yk
	KweXdaE0rp6tTW8CmeU0GF+BKHGP+o341A0V/UJvSgZu/nFKMiraNjN24L6jP+oo
	Xznwcg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqmhn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:39:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f2c0e6653so228878485a.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 18:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794796758; x=1795401558; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=F2MkkOjtOBMugVy6AnNn+LItc3X/brWtifolQLWYx2o=;
        b=Lo43t65ev35Uxh7R1s2zohtATqLFyWqWN/UQJWm4Bf9mH30bA8tSrWtF4a9U7C4pJF
         lTZSpSkuPdZX7gbll/xl3StueEWq004FoKQsbCBvz8l4Hv8KWM3kQnJGe/xl3ePGKCAW
         JfbvIPUj2FZdzHUmG5ma3JBcxT5Ct1LG4fq7h0zl+zncKI4g0BiAzcUX/tOKkLhNcoAa
         vfSEzzssDysKSvD3YjfvDy8vDv+lEQFpRMvwFI9/YXx7MSYKaPLiOEY5ff8ghBlVayZJ
         uOeCldA847udZW1807i3GniCf2OVANaBkQ8J2m8WPxlrXAqMFizgQHShi/H9mhhL3LjR
         OJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794796758; x=1795401558;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F2MkkOjtOBMugVy6AnNn+LItc3X/brWtifolQLWYx2o=;
        b=tF3tlH5Sh0eNn7Tz35kxBM1zfn/03d/ikyQfJYTWnC46AANfA4wY13mtLFnwSoRYdX
         snANpxd0XVUr5dAgpDdyeTSHgMqcsqlm/fQInRNW9OU599qLbcPLAJG6E1JxJSqhSxOp
         M4xr+fFd44ATBvJZ771Y7s+bo34zlY4hiuRknUNIgmJGqq/eL3DjnsK+I7I9O+9krqBT
         6NzNCvy4oyNWkm+naXB7q1rx/2i20CpQsLEYf+7UwFDOC4Czk5ncYgq1bU2t7AT855m7
         IclpqTOiiwnfTvA8rO/EHeKOR8Rit2Vs2nc43H7+OhSfSDjYOpDtGIhviD18sW6WPkjU
         wWZg==
X-Gm-Message-State: APuU4Z/gZfOBC3xITPcNFfCDijsqajh6UQlCbx5AnptyeT0HyBJG3JSe
	6cMAArIzsGaBbRCR/CQ1aYvM5yaPKrilajg7Cvari1pRd1d2h4Oj7aJ6UAVRwfRaxRa+h9UBjOa
	mqvhhZOZe61In2c/8p0SKrxHCANwH9FpwnlZDtpZkGwkvqZaE2o4ypqIg84+/RjLvdBQK
X-Gm-Gg: AYBFou2J+93Ey02zBU6OhvrdQ75wZOVEizzCpOtVwk7AVf9qzvb9pjjuQLhlc7BUQnj
	eavKXgyUaDroT9EzTsN0g1QcbR9nZPoqtZWpIFnvluZjmyDChMzmvrnUgTiAShEyY1Hdakn05Ps
	fA6UfiF37plbiA2Of4gPVFx9b+HarYEnYTPSzbK0N/t9RxdmRURvoBPskFDka4ZuxRDEZb7dmIf
	aR2SCBeR2NjSRUJP7gAJYFK8V4LKqheCmgb6xwmZHLNJHLKf2BOPTsGBT5ILfeKL9soD57DeVoE
	P523i4feAZlR5Ly58NwvQsdBWH0N+WRrlNLcWazd8ZnbtSKWQOYewgVm6WX/+oGPUKGpn2dczHt
	L7mcIDjflrWtJcOJKGQN9EHtpy3Lx8rw0ECgWmY3vq8gJ/NGxNcA7wcHB3COc5R2BJYjN7U3vBQ
	KUw+IPxxZv5SKIPI6RDpNG8Bo6EdsRRgfE6A==
X-Received: by 2002:a05:620a:ac18:b0:949:5c62:e785 with SMTP id af79cd13be357-9495c62e9bcmr926218285a.21.1794796757763;
        Sun, 15 Nov 2026 18:39:17 -0800 (PST)
X-Received: by 2002:a05:620a:ac18:b0:949:5c62:e785 with SMTP id af79cd13be357-9495c62e9bcmr926215085a.21.1794796757283;
        Sun, 15 Nov 2026 18:39:17 -0800 (PST)
Received: from [10.38.240.54] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23c9ade7sm75767716d6.5.2026.11.15.18.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 18:39:16 -0800 (PST)
Message-ID: <12a1c1bf-df65-4ed9-8d36-23d89d5013cd@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 10:39:07 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
 <a4a3df2a-eb90-427f-8881-f857100779db@linaro.org>
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <a4a3df2a-eb90-427f-8881-f857100779db@linaro.org>
X-Authority-Analysis: v=2.4 cv=KelHIgYD c=1 sm=1 tr=0 ts=6afa6cd6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=bVWuqmIr14v8cS7SW4QA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDAxMCBTYWx0ZWRfX6d805hyXRk0Y
 nCusl+DpRMWzETQsxtXdHaW5rklqA56VSSsAOhOEDQ9FQDhKymHR3OX9FLKkibcDBgcuU6fqChF
 qTkIUM0gdMzsKGOjTDZQ72jMf3GneK4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDAxMCBTYWx0ZWRfX++E/oxSn7zfk
 KWgyUT4oPPZe9YTc1NTo8ZifSX8L3gdLMnT2u9ckX6VJUg4pvGoQM9uZjN2mmPlLnf1/9ysEBeL
 csDAtHPjoAE48CmHcl5TpZdxJW4cReNwjSuk0y6ljpxtWq0zDNRdNjSOiW52BM+96lasYIanxKi
 B732nwp+TYN9LO8q33KSSAN1brYcbogxVgHzcFXMyq9lHwsRv+6lq/V9GlKtmRz02mhN2Ym2qGN
 SmbmwyWHyr1X96wk7RZf/lmzi4SXfWUiNkxsUJhuwuxM6M7E5Us9RJA9Afd0UStHCf70TzwUqq3
 1qfuwQKSu5/GIDjs+zxc04RrsIJGxQykIs//48F+/ikyVz7k4Zi6OzJgAD1MNFFzvbjKz4kMggx
 5KY8GMUUgVISCVYjPmjb/YByJn8POv1LKIcF0ouhzGeh2N1imJywPXKA1zYOfH/v6drDgCZ4Mtl
 lwJ+QngijR3n0QdWKwA==
X-Proofpoint-GUID: Tqtxt3bzCDJ6E_Tz0UBL9rKosH048xUU
X-Proofpoint-ORIG-GUID: Tqtxt3bzCDJ6E_Tz0UBL9rKosH048xUU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_183919_537661_4940F77D 
X-CRM114-Status: GOOD (  10.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan,

On 11/15/2026 8:05 PM, Bryan O'Donoghue wrote:
> On 14/11/2026 11:29, Wenmeng Liu wrote:
>> The SM8750 camera subsystem has six CSI2 D-PHY blocks. Describe them
>> with a standalone "qcom,sm8750-csi2-phy" compatible, so the CAMSS
>> binding can instantiate the CSIPHY nodes as separate phy devices.
> 
> C-PHY, D-PHY and combo mode ?
> 
> It would be nice to get an accurate description.
> 

ACK. Will update in next version.

Thanks,
Wenmeng

>> Signed-off-by: Hangxiang Ma<hangxiang.ma@oss.qualcomm.com>
>> Signed-off-by: Wenmeng Liu<wenmeng.liu@oss.qualcomm.com>
> 
> ---
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA6EBC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 13:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3NINVVD9nHey3NlpAHAdH8v9K/76qgixvPCSI9fsko=; b=tyxO9WEjbgmdUA
	hHphrpVtD7K2GQFaU0pGuZBnTwzpF4iq12mdrISU/r1DSY3s5juj1lJH3WMUdq7mSz25mZl1OopMb
	PMLo6cAXmhrVSzFxp4uskdadHbg6zCkoVu0+iLfUwYi9lAV+JvthDf/rinFsP3gE1u4vCScHuFa93
	p2baVL2ZiT0+efpJJdk9qNy4mppIzyPpNZhEc+IhrhcRPUpEIUEZ0SQPz3Ibwj8pLU1ml7dkuJaGd
	Jqh+lY839gacD2gmtUPFj4eODLP1B97/6hhJpr8f/zQCbMZ7Xg51wGd4m0eI02+b63rwrsv6mTLR+
	wu2az14D+VtQgLNrf+xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x674O-00000003rPQ-0Zf0;
	Mon, 14 Sep 2026 13:50:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x674K-00000003rOV-37Xs
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 13:50:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68ED0YA74091235
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 13:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p0xQVh0vFCjxQwxfnwMIlrQY8/y+VhxDPksoF/C8V6E=; b=SF1vugy6tmxJ9Hb3
	/FBZDLS+4cz7nDXWp1+crGENkhyjij95AdcMLf/rFo8zeXbBVavHGJvBWO6ZlRGa
	sTxJIBwuvKbhzK8Fai+hdLeQpX36RNOdlBbmP9Iwaw71Pe82kEZjyuex9SDZYo7h
	YE62YjGxmLa/kUEaTU8Rqf+dOtXobfFfL2qCniywySt4ktcgriRDKTNEoooHHdbF
	mXwQWtWU+MFmQBj7NeK1DXGEh+fYXbtk6yGMNmollv9EXrgC2Eq582ZpmX6/BLjB
	D0U7eqyZVEvBPfWqFlUhX/CelJT3zX/ys8qTycl4noDf1sA9hf7Z+Uqnugw1C2Dq
	q1Zi6Q==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpcjg1dfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 13:50:00 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-78a1ec363beso95054137.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 06:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789393799; x=1789998599; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=p0xQVh0vFCjxQwxfnwMIlrQY8/y+VhxDPksoF/C8V6E=;
        b=WJYvQT+B+GEVSJl0OcYATpbLGxz+/qwfLyY3a+JDOpTE7K/BwYXzUL8sycZfMXaDPF
         PdXTVqqQ2myxMNEUfxDjr/zu3cZ+2g7isQvOUZuzRgeISjaV9Y2wZMF61wuzmtJD0wxd
         +i2EiBtCGQm3NfGJrcnLVZyN/puhlFHU4ek0bufhMpnS9L92XSH8v4NvmjN7WIpo9flf
         7x8sbLVcY4QhiWqAkCYUHSdv1+3GIJYfZOjAtT5hTRWobDxu3/jbuENub0rwx4LmXIoM
         ogYwD9o39XQe9t/MtWw2BL00LFM9wqJTKCJG47+JvEP9m1jZSpY/N9KhdEJuEYWpj/VW
         1JHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789393799; x=1789998599;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p0xQVh0vFCjxQwxfnwMIlrQY8/y+VhxDPksoF/C8V6E=;
        b=PXuNiEk7+zVdT7MH8dnHXWHXVAJFemfwQuSKfs5W2qFW6vuN7BVeG7BeSanuSC05pE
         OR2hjy3PgV98Wr3iX8MsL4KIVXGYL1eZ32hjWoboovN3Ka2p6fnjhaYWOzNbiOqWXFcu
         FOvdtN+6eeWSsgdosyLOFQW5Gruo/sBPRK2IMRmiwmAy8WhgJu2MoxTzvSl3b0EKOQyi
         kFCsx4yNcXypdVzibOhJQp9kudK9jh9o+b08tzETPSz/ZEkJiKIQdh+xQokBw0RFzYHK
         HzJ3a0MG9tE99Gja75BPF0emlJL9J/oQk78gWR7jj2W+0Y0acK1iJ6YPQ2FEnoCJ1TW7
         y1Eg==
X-Forwarded-Encrypted: i=1; AKwUvBxklxXwS9XE7usQqeja2OYBSEpmBulFb+516sWvBV0gHJ7s2MOkFaMXTvvc0thcTaiD/uNqfv9zU34=@lists.infradead.org
X-Gm-Message-State: AFuF++kd5z2HwRhYneWTwLdXK6GM4WulF5LkR6XjDolbOaDiS81wLblv
	nSqfAIizGVBEv88ZwHySTcmPGTMgHvRs5+RIObOCddDw/Bir/U1x3e61qYJ+HnE72LWuuZ3+O8F
	fN8Bf189jzq0i0GRJ/nflFjYQJOlIks4hCe7MqslRgTYpo07FG09hx8sA/p3DAZMD6FSv
X-Gm-Gg: AYBFou0XQ1n9N3X87esAHrySh3wyBfa1z50vFh2wyFYUBTQYhKU79tlR+xarko4YULO
	XIA8V51U0onk9j29l1DfRhNgMvVVFQwOPLjLV0UDnGpmjo0z8LdO9Tmnt/j3Y0BRYTtE5tsJyFX
	264Zu1tbJqbmbcDBncYsjwk3AYHrc4tuAgTPV6HtDLe3MRpmJjYa6RfCM7Az2oBhbSnYNV6BDio
	qqzgNDzXlb4cFiJvZ+pA/33hEoIOSnWz7elg8fsoGGCHxaePoX7xnfcJf9L8zK3gVfDju5i5REN
	IFCTPZhrW7qFQCsdqx7T3T2IWJ+jIlfr8E2Tso3BErrBJxf4+BXvTrBuVHsvy9gERF6sG4pOGCn
	G/1BNTNiJCeaFd5BUXdMWog==
X-Received: by 2002:a05:6102:149a:b0:797:576b:a9f with SMTP id ada2fe7eead31-79b5be3a274mr594964137.2.1789393799279;
        Mon, 14 Sep 2026 06:49:59 -0700 (PDT)
X-Received: by 2002:a05:6102:149a:b0:797:576b:a9f with SMTP id ada2fe7eead31-79b5be3a274mr594950137.2.1789393798841;
        Mon, 14 Sep 2026 06:49:58 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29660ead51sm440791566b.49.2026.09.14.06.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 06:49:58 -0700 (PDT)
Message-ID: <732f6e8c-d7b9-408b-9bde-7034f73667ce@oss.qualcomm.com>
Date: Mon, 14 Sep 2026 15:49:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] phy: qcom-qmp-ufs: Add Glymur support
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-5-b9fc5e2ee99a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-5-b9fc5e2ee99a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=CKa/zhrD c=1 sm=1 tr=0 ts=6aa7fb88 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=e1BaVoEGz4s6-YW_u0UA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: yuDS6hF06oKpec74V8kE22TOxAUXEvIY
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDE5OCBTYWx0ZWRfXxrHKyEpEmVzN
 43kCBcJRXNMkYg2TH+cZFPF5JZlkGFYbE2CMGBE9ZibvvRy8hyJnLwrYX+1pldMJUnQ/LDdNb0y
 /+8Hhd8qNHljvxQoM18BUPU2tXGbLgU=
X-Proofpoint-GUID: yuDS6hF06oKpec74V8kE22TOxAUXEvIY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDE5OCBTYWx0ZWRfXwdXQqcmNFPIS
 MFKgRcrrjYJiQC7TBWft0av1/iF/5lhcnPE2zHOSnFDtyNhVrLKLctdLJLQhGNtoCjKLs+/GnHu
 wzA7y96kMzlZzUyputgUa1hrWzYIBQYdKbG/m94tzt5ZfivQjFYSbzgKdJX4rDLQduGF7ZU9CZc
 GM4xucjlhbDVDmvAcMdufWdww1q3PlIgJfE/0ydPMKbaODPlxN9pNaqEhMlIwGSIrAQZACaSh2s
 p6mpUaHtPuG9ozbabFCDcowr5roWv9xVOtjPaotAdgy700qIjWJ8Yn18LZs5cTKULsOrBtTHp7n
 pKqhnyPRu5KgizQGat/oSU3IlaAyXtF/Yp1nLbT1Hf3PMZ3PxeBnvexFOSjFhItMPzO8YrBnrvB
 //AlNePul/WCdvr0PPfe3YyvT/ga9xGUd8IInnVOY+deFLzhp+44u6sqiceqcbdgOqwgSaHE+mj
 HySZeI8PrrHckcQONpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_03,2026-09-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_065001_217017_8C598364 
X-CRM114-Status: GOOD (  10.49  )
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

On 9/11/26 6:47 PM, Pradeep P V K wrote:
> Add the init sequence tables and config for the UFS QMP phy found in
> the Glymur SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

GPT confirms the sequences are OK and I can see that the 217 mA
load on the regulator also has some confirmation in docs. Not sure
about the other one.

in general:

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

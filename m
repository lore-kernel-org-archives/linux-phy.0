Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145EC606A320
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 09:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yGsofFY2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VZzhkrMU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=i1jdyFs3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zJAesGfEtmbNyBRDBVmEz5SkZUrzsNIDTipAPVMwS0w=; b=yGsofFY2mS51f3m84C1KZ9yxrb
	hneHRYb/+FUq4s3VHQafeHlnbAiBch9n5qu8U+gdJgMZW43mmrc0dHrPFyx7QLI/wcrJKcASlIhG6
	oYLDKom8cw0093G9CQbJ3CqUZbX9USgk8SWxAWUP+/FeCPh3zuQGW19JBO0bPDQ6snqYsugZPSWCe
	NhoV/Zi8pwSdSpfTJJGj+EyMaDnx+/AkYKYIlTHLg7Bqujery+OU5BXYjCdEcAoXpgU666QIH6MRc
	rqtJoEtpN2rghAlTKfX7cfCWDutyKvtQxLjK/jyL+xtumectij/EBV9JLnbyDRIEx8qByJNEtkiEl
	IOZe7ctA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHLr-0000000281G-2cmN;
	Mon, 26 Oct 2026 09:50:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHLo-0000000280o-1rw3
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 09:50:45 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69Q4auss2727065
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:50:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OM9NA6+9DRMy/5K7XlTQer+g
	WEHVhhYXBGhL8vr8CDI=; b=VZzhkrMUsOLBiooW/QzsjtbJY/FF/BNqFiImpKD0
	fwr2m7fM28MoQIFGdoW7sL2Su8o950QtBmXq1vWRdkcX4sHhDtTRmHy54mMjWleq
	Ga5ShmvhNjivtWu39ZtJUqs+35VJNw5eoluHLVk7LpbHl+4aXeCMNRpzCEThq326
	otYkUxiE0FDo0zFRpGgmpkpZ/OTNrqHDUf801l8feaREka4P1vzSu5Q5Beh6J1xO
	xCph4yUZNhR4byoIUho1Zlj0jcD2PL7KSISsnB5WvS9TPIYQ5bryWSm8RxwuxAGO
	xwgfF7e4X0C8vtOH29M75scnnO5b6n6TLRWGzEw2rqqPsw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgkp6nwn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:50:43 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-7b206156cc6so2889707137.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 02:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793008242; cv=none;
        d=google.com; s=arc-20260327;
        b=rwe9nL/l69TcWDtv2jFy05p6gLnVLYF++OO1W09V+R59SrKwGItJcZMNTvnDE8oF8k
         K9EpQ75uNDbq1dQsfvAGUH3a+EedwOkwoxEbvSfzm6CvLjHnnpIRB0uqArnyB7QbzwDT
         grzxkLsiJyZlhWCS+Ewi6iof0qexp01mcTWOKUUyNjrwczcu0SnmrA23rIQs81JGq8x3
         vN7gxmmwQum9ZOiuKAg7R2bJ1SNAyJjzqyFSLq8U++yodCTmhmVjvPuJtPYM51qkOkY+
         gS9n5/wftPkH6AVUCDPOy4XJgihzgrxWZ62zu7tQ/heQWH12SSvwjv2/IswmoBZKwVJ7
         fDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OM9NA6+9DRMy/5K7XlTQer+gWEHVhhYXBGhL8vr8CDI=;
        fh=9hphyiu5X5SdHOs20+kuRLymujdmPo55xW22dmPCF/c=;
        b=gW/enQKdAIH6zJ0IEeYO7RtuaqxbI8jUCgboW1XQuS53sJ2N/7MVVLuZU67D3dQm2d
         KDYRbUCR5YVrMrcvuob5haB08ZmIWYVZ+sQhNpq3Aur8Xnq9M+CzDPRQb0OeSLdzMFUL
         nnmcSOCB/K7IMQaeBkez9RVyZN5tnb5fkqnOQ2lqSC9cBL7g7Qs1LNGjWWbCzLP2phsN
         YA16NML549ovVZu7AndBbmWbmB2ivApz45MrqLXVTM1ZnSkIcSs6YuzKHfHkG3WQTPpA
         fkujPXDCx1XpP94sWOmRLs6IhidfYljcAEpLBBTbY/AxQNhBoRIr04q5KLevSwodliwk
         +eYg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793008242; x=1793613042; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OM9NA6+9DRMy/5K7XlTQer+gWEHVhhYXBGhL8vr8CDI=;
        b=i1jdyFs3+2B1wZ5jsAuvi7FCCYX32zKEzQsp2r/XOKvwLhpQ4wXKnoxQ8Y4UsP7zbh
         yE3iHZ1thtlXRQFxWqwFXAPLFQbUHhCLEIodhsoRT3cV5CiinRb5oGdwZVlZ2yqOlmec
         a+DF+tOh6evDp/indlvfwZt4QaP84spuq+LkwA1cIln2q0imtjWZlGiNotCPQ8sS6oRU
         d+4IXSxbKAyfM8YWsdQN9ZY+nZ5OR8ibUWhThktVfAyDvwg/FUKOrXV3g5eG2Y6GbYB8
         pV+PZH/NcbkrG1fsS6cna+d6YviO+s+bM1Xa2XDuREiG/xSSrGtKrcdIjsejPN2jQBog
         bIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793008242; x=1793613042;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OM9NA6+9DRMy/5K7XlTQer+gWEHVhhYXBGhL8vr8CDI=;
        b=zH8wOl+41M8EJ+KEINDxgsOQnEUOhRFWfEESFA5O7bQ4kXG174qWgBD7CGllpOMOG0
         IT4gVIQASst7Jls6BF2AiYQjKWkqWCkE1gm/gqyTdm+ZIEjbngzgW77rydK0GpAj+0uE
         vizgSWWGl9AgVn+nPivGNj4O1qkPSM3mVQ7DfRgxAOb5PF2EJIaY8KaRzUqgD0g0s86Q
         3VIIUOeUkVmzT37bB3MhcQZHw4IsSZzPhJqG+JgDDqBMjxgDjYagVXcTzzII+PEtrVRw
         W1n7tyxHEuT8Nx7bkDwhVqdaoFjZdVUSmfisyuUUFggqwHq5L6uXLU9GWMxdlRCwVP8P
         yDzw==
X-Gm-Message-State: AFq9FYLvYcCVimuBd0uiMWtUHuQQEsJDTsuo7K+spPPXVJ/Pim3RFp6A
	wIW/tLRKq7/Vzv13lYIVktPUtQpqC45UrkNxjOR0QmFLZsbnjOYuWJ3INCRsQxUbW+bJpnp2KXz
	Or25LDwk6t0iqTm3IE3BNQk4rGX7tL+HJOjZajUa6UF2RefF3ZgYbKVox04t6t0GTRa3qM66dO7
	CnYTUqVisJ6JBAIYB+8miKy+dI1QT89Xd6fcHDiElbaSg=
X-Gm-Gg: AYBFou2bSBxv5JbHwKvE/imLmByYAMobFnISSM7755tuyncII/UD9vP52S3+Q4rw4+x
	CsrF1GM1/7D+qmMUathqAsxPCf/HupqRqHyq8/gjacMmEmVaBiBhpbnrKZnpJ5oG0mVdANvgK0V
	jOOYzHl7tkhD794/+ygJCvoC3KD+G/l35kQisG6UfS2RBpitBKoSt0XM/eXjvc8EoXph+O55NSV
	+bdfSdIvyEpjJyGMQ==
X-Received: by 2002:a05:6102:2925:b0:7af:fef2:8ecf with SMTP id ada2fe7eead31-7ce5cc37a74mr1922786137.8.1793008242580;
        Mon, 26 Oct 2026 02:50:42 -0700 (PDT)
X-Received: by 2002:a05:6102:2925:b0:7af:fef2:8ecf with SMTP id
 ada2fe7eead31-7ce5cc37a74mr1922772137.8.1793008242146; Mon, 26 Oct 2026
 02:50:42 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <DiH264mdSk9atz9YjnNUImra2MISyqRZQN8lEO6HpzVBiYU4i_cNONZzyW0DfvCXJ5aGIrBbDYFXRbTBYLyjBg==@protonmail.internalid>
 <20261024-kaanapali-camss-v22-8-7da3ea49c8a1@oss.qualcomm.com> <5e1cc716-22d2-4d1e-b68c-0c1608890043@kernel.org>
In-Reply-To: <5e1cc716-22d2-4d1e-b68c-0c1608890043@kernel.org>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 26 Oct 2026 17:50:30 +0800
X-Gm-Features: AclHuK9VMGCfWrLZ5or5WCH1QYYnG4gicCOANcYBpkmCFj6xw3eUiA1tUH_i_Q4
Message-ID: <CACbMrhqvfhyejKqsbCXRs8p9Kizeh8pS6qBygKDwpghPqrGzeQ@mail.gmail.com>
Subject: Re: [PATCH v22 08/14] media: qcom: camss: csid: Add support for CSID 1080
To: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rijGFN9DQUjQD4jXgImfdeZePjR1f0a9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDAzOSBTYWx0ZWRfX9fkpIgyERp2W
 9kC0nwnxaxiLoVVxQS8Vgc6RxQPooNl7Ji5xgFVZhVXDjss+AF2vyEqyVUBoaU5b55O3HxXNPp5
 u6q1UbifAzINcrZ67W6b6RIYfsR+sIk=
X-Proofpoint-GUID: rijGFN9DQUjQD4jXgImfdeZePjR1f0a9
X-Authority-Analysis: v=2.4 cv=bq/Zl0ai c=1 sm=1 tr=0 ts=6adf2273 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_glEPmIy2e8OvE2BGh3C:22 a=XVB2PD5oAi8qZ-TPs3wA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDAzOSBTYWx0ZWRfX7WHKhSsVz7pN
 z1WxuRcLpmugAaqC/AZDb5BOsexziHP/9WjoWY37uELpk5cJthg2g0RwfkFh3c1FoYWt4wq+P2d
 Sys0dhoEBocBw/0ZJtSNdAkjeXT5ikU2c6L1vE1EHbzbWX51KPjs5X+xAI1pMJmMo4Nh5HI0wRi
 OJGNt9dJbV1QuzjO4n5XDZ9mmkl0gj0SP5rSurqmSENiJYr4MELtt8BE/+fYGfoFkSFzWaTAYxu
 DpL9kM6CrE6aLJPgdAWknDZ9Vz6QPqyRFyFpXUxUQ61DQ/TfafzmtQxGm1Bb+kduwwfl/FKE6xl
 PwrHReoMb3CUMkWgltHdGlq46doqlA5Yey9iPNhkTkQ9C7vkv8Nb1E8jNgwiArrjxDbEVXpKu+z
 N2dShIqzm0TQvZH+QxkO/zITgg4MgxZWBN7PFI9NX2gGe7fubqOO9bENcAinCTLVtq/gD60csbM
 v7tM19SiCLj1Jr0WdPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_025044_601726_2320885C 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/25/2026 7:15 PM, Bryan O'Donoghue wrote:
> On 25/10/2026 03:17, Hangxiang Ma wrote:
>> +#define        INFO_INPUT_SOF                BIT(12)
>> +#define        INFO_INPUT_EOF                BIT(9)
>
> Excellent thank you I forgot to ask for INPUT_EOF too, which we
> obviously need too.
>
> ---
> bod

Thanks!

BTW, I'm not sure whether the current addr_update design fully meets
your and Loic's requirements. Since we're still in the merge window, an
early review would be greatly appreciated, especially if you have any
concerns about the design.


---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

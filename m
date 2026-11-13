Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEEE606A33D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 04:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kIlf1gNg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=m1uMajdG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Cwt4ucqX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PTrAjKE1gdu8eJU5ALOcKCMWFEOCpwwUF8YqLaTv9DU=; b=kIlf1gNgt+TQcoVjNQoZralLiw
	TOfBgjz4w25bAa6vTfhsEY3H0fGYMBhlmVKmukm/2sDMj9KEQo5Xr3DeaGVZBBnNRW63fJ+VZ3liu
	P+6yPssMMd519Co3mUxUxNfN3oXM4msI62c6gdQe+m/1PY23yhbpQQQ1+e+H2Ws2yC5yJBg4BW5mi
	Fu85F2y+5TshddKle0pL7/S5vRs9nKIEArvYwhZOmPHhLgCjde4ypgRS7tBDO7plJbpQe4gATB+kJ
	AquPUr0WwdVXmK1QWk8K18sKAAU3Flpw/iT71YgwfTDjV7fyK7KAxsyj5PTtqy5ejnOE+Z/ZtuE0Y
	gqIM7eHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjGk-0000000Beg1-0rMB;
	Fri, 13 Nov 2026 04:52:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjGh-0000000Beff-193c
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 04:52:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD2KC7f4120462
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UMrXrqjcsDJ3ihciM+V6CPHNii9aPk5xl4qMC0+9WnY=; b=m1uMajdGfB8yNmqF
	Bv6eb/e7HDfPOxU/G29prAYNpGd6MNvArlxR+mYcCDGDpIFi7s0oJPb1y437KXj+
	twmqPirPxPyhnYKvCzV+yuAab4993STXKfVw6grkwIjPPDYR0U5Q6w8B6NWdiFU6
	8mNbH/JWVuFeDnngEkNj1eSjJkE/Kdo6db4kUuADp8WL7VECjHhEON/OwiTz7z86
	WCd1XFUNkvv0vYrWo8aL9TBvMCj1cbJhXrThDa5sQQo8hXTFXbiAYQGiV9kgz2kK
	TXeosIb/4zNRoBLNdR05/ByEqWorjLDydZoAawNlCOU4AR7pfMCijbQ7mcQMEt7P
	Vy/Rnw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx33fj8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:52:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b175a69ab8so832971a91.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 20:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794545525; x=1795150325; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UMrXrqjcsDJ3ihciM+V6CPHNii9aPk5xl4qMC0+9WnY=;
        b=Cwt4ucqXegpMBZGPbacm+LSlzN8INpwF8Fhaq1301q4hHChJnGgXbSXvqtQdYT/IUw
         Rt1nOCKuYYvj27zKgLXr/SddFgpW0PtORGOFW+hqWjxai2upjmgm+YCYZaAKMBPafmBC
         hUnIfE/cHrhRHggC3Q1W4fE92o0kkPGjJdWYLc+k5RQ3c+knRQw9n2cHHJwJEouXb/Zy
         7ejVazTAZbxmyXZhnm3ficVX/1Mbs+XA2rZSQEOLaOcYk+7rhlISr2NsdiGteY6qMym0
         aXbJrcx+ANEdyiceMGzBVT7uc1hQyCuhkNAfXZv+uFs8nOeUtXsxzNNRI1xwVR2A4uhk
         wMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794545525; x=1795150325;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UMrXrqjcsDJ3ihciM+V6CPHNii9aPk5xl4qMC0+9WnY=;
        b=BHVhd3KRMPUSgZ25ya64cAOLgXirXfhY8yy1kc2QCgSwI/UALVF1eJP+5RAMGflnW/
         TQL4ws6xAC8yQkYvRjf3CurE3WBjRH/wJHaeTd059T/sIdiXZxE0m6MF+D7XN8W/F+36
         s+aV4oAC5kKB1zOw13M+qEfhp0BkZWi2d+3lZanuMGRzUW2b6AGPJ9XNJWor0y3PSaag
         aEZNw2kTtGqHX7XxUqJOmUcEXt4cEzdNYWbNLLXYkTB4QdupRnX6jphNmD3DnAOScOLk
         HP1o9K6+oGLUqoK3x2bXglJ5jzf1WCv/54cHlBbwWzCTtsDfvk8VFtr6lbGrm/HgRhJt
         SQIQ==
X-Forwarded-Encrypted: i=1; AL+hErEmVyNuiWcQmM/Zr93OkiS1QJUDBVT6QYEDSqyMjbppT1a7TCdM/FqkQLx3AXbFZnembxi0zkG8U9k=@lists.infradead.org
X-Gm-Message-State: APuU4Z/EuauBPAM6GABAeOTOV5m+NQikp/is0Zsoi8jwQCKdZTNt5s+b
	43Rzo+5PEGXKcCqpWOlh4kx6sqE+aFYVqByRzLDPutHpdBi+vmXf7bgSnIo9QBy71aNQu37ygM/
	UZV1I8bMePGbCZktGzGAF1RjTL1n5W9uwM0an6PeiPfEsJ6KZMIjEC98UbxjqPjdX97k5
X-Gm-Gg: AYBFou1f5X4SLzNS7eqSHfzt1SYYvan/5Mwv1HZ/WR5qlBpYvjlvaXno5G1e2fF6i5R
	/7NTGIeF+i5kV9kd/qbDNJxHATk2KdVggFCurILRDqryS0oFh7mfKz8sn1pcOCUbcHuMPAqDLcF
	nyGXoYOUZQf+ik/JmTrYbah805r+jnXBPxAouutvvQQdeN+DT4K+vSVq4/9cAna17e3BSGS8p1u
	gjAflDcCaoksoMitUXwOAxAWwK68INdlJR7hLK5RT4odTm3G/2HSsvvsxdcjzsJ/sCR/ifqZGZN
	jim35dVCxVOivKZcC8aGx2fm7hVBE7J3STqKtqjIkkLUrnGzUZHstFmSvM6EN89iKy7qoEWsjBY
	bXIt542ElxpusAqSH4M2Jc7MQgBMJ2hBoPYLv0xouxLO7x/L6u3xA+SQ8ZzMjTQ==
X-Received: by 2002:a17:90b:574b:b0:3ac:b145:8f4 with SMTP id 98e67ed59e1d1-3b1b0cc9790mr1123858a91.41.1794545525003;
        Thu, 12 Nov 2026 20:52:05 -0800 (PST)
X-Received: by 2002:a17:90b:574b:b0:3ac:b145:8f4 with SMTP id 98e67ed59e1d1-3b1b0cc9790mr1123826a91.41.1794545524150;
        Thu, 12 Nov 2026 20:52:04 -0800 (PST)
Received: from [10.204.79.100] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1aec63b9bsm2524494a91.12.2026.11.12.20.51.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 20:52:03 -0800 (PST)
Message-ID: <8d30551c-38b0-4f4d-a532-f574ebb5373a@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 10:21:56 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] phy: qcom: qmp-combo: delay Type-C mux switch
 while DP PHY is initializing
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-2-naidu.nama@oss.qualcomm.com>
 <xby27hg6ajesijmdclu7f2sa2swv4ednmokka2pbn7uaufm3za@czdij7j2qcml>
Content-Language: en-US
From: Naidu Nama <naidu.nama@oss.qualcomm.com>
In-Reply-To: <xby27hg6ajesijmdclu7f2sa2swv4ednmokka2pbn7uaufm3za@czdij7j2qcml>
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af69775 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=GP3zSRAhaBPBpq4jRjIA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfX/sFpqFLd4yHd
 dDUAVoLoYZjwkUTO37OKzbX1q2jamIcsESKkmgcS+g0XKqTbWoeyXX6n3G1F0mMYdmqjGOfRx/3
 LwWFRHHLFn0CWXmUfyKLmx8bmjVjlLORBoH+1OJaKPCuCDN/J5iaLFvLpHQhXjQ0cLWrM96u2TI
 wrwXIhcLYwuHFHhN78C3G9X5IxX+43Zw/6waFR5E319fIzWnB5JtiOv9WJ2E887dwkFmI8StzL2
 cCxrA0FilyJ9YS8RFSHW2gv2tTnMkpZS5KpO+IGHxLhqCD+PYt7O9hecjEqhkCZ5fNDInMpt8rC
 qO5zmiUWwcYgwVFpaizf8ASDXdGUNoJf+Yq926ILBNfS8VjjhsrjfxE8k1wRpqj8p6aJMxWSooz
 qpxukXwJzgzlj9ESTifzMf7sEnHiK5X9zOjrR1NVEsuGAzHj4SXHXFTeKeZKbYXupA09ARSNSdE
 9ls1zuHHXcwNtCNNXtg==
X-Proofpoint-ORIG-GUID: g5Z2aCPOd7R-m4m12QzuYS_msBa5y-q3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfX24ucJWxGZ6s6
 sYEFyxRbCN/uMg3LCHy6wDg28PCyhyEg1IG1Cr3Lyogcrw6wYw9y6i3NYCE/WFjEiDivQRDE3N4
 VcWPlSBkt7ewiVnqf7iPEKguDH4x9MM=
X-Proofpoint-GUID: g5Z2aCPOd7R-m4m12QzuYS_msBa5y-q3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_205207_326710_D483DCA0 
X-CRM114-Status: GOOD (  19.81  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 11-11-2026 19:36, Dmitry Baryshkov wrote:
> On Wed, Nov 11, 2026 at 04:13:53PM +0530, naidu nama wrote:
>> From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
>>
>> The Type-C mux switch guard only checked dp_powered_on, which is set in
>> qmp_combo_dp_power_on(). However there is a race window between
>> qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
>> is non-zero but dp_powered_on is still false. A Type-C orientation change
>> arriving in this window would proceed with the mux switch while the DP PHY
>> is mid-initialization, corrupting the PHY state.
> How is going to be handled then?


With dp_init_count check, mux_set will be skipped.
>
>> Extend the guard to also block the mux switch when dp_init_count is
>> non-zero, covering the full period from dp_init through dp_power_on.
>>
>> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> Naidu, you are resending the other people patches, but the SoB is
> missing.


Sure, I will update in v3.
>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 61d8b7a5ce8f..3f93043f94e5 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -5163,7 +5163,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
>>   		return 0;
>>   	}
>>   
>> -	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY &&
>> +	    (qmp->dp_powered_on || qmp->dp_init_count)) {
> Can dp_powered_on be dropped then?


Yes, this can be dropped.
>
>>   		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>>   		return 0;
>>   	}
>> -- 
>> 2.43.0
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

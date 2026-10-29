Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BE4606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 06:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z0LyJXqe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RD8zn57b;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=f0N665VA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ioxt1HyaVQ+FcrStQ/TqopjNDagUvblqFzRdy/Mp89Q=; b=Z0LyJXqe+7Ot1ZAGXcdOiAKdij
	rbojcQ20+R+gO0SdL5y+FK61FvUb0iIKgsqJR8kRZpYfwI14zXBQ2peS74+r20TG7XTgOza7xrOiY
	awEX08mYn4rCkjjlnC65lkQREG9G8dM2w2BZPUTORc2utzPI+g7DVVFZRHWZfCxX/VOZv4GLWacpo
	kkDUt2opw+ob5frK3jNxg7PL+fW6tCOJy6meb2yKxSS9nrJ20BSj2Dy9Ltln1Ofy/6euGXISRVVPj
	PXGqHa7FmIyLdcq2n3v8zhmSjnYjt2DSeYVdpBJf1eaO6rellFCHLWxxiBlyeJz7+tPx+kida83ds
	QLZlmNQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJMI-00000008RJz-0bTL;
	Thu, 29 Oct 2026 06:11:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJMF-00000008RJd-1d40
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 06:11:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69T5Gmtx204370
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:11:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+x+sbwYe22bkeBVNltT0oD7sdL3tpcHA5d0YP5FAtW0=; b=RD8zn57b70Z6Mb+5
	dy7ND5ZWFKmsnY+JWFJbd+PT79oPzxN26Z+sjpvmdKDhTjUS4/1OZRGhG8ni1g8n
	so1541mpoo2V8MAlZmJqvErSmEKNMLhCmAl7odE8Kfeoc+dvrgRua29ILhc6XHxb
	w3eqfI6YYfNGTzPrwbD9wTrYcPCazYFfQXkm7aWhiHZyMerEPmoxGfT+0GbOONXm
	Lj6ZQB+E3GF3qmLkBiKQKIMcXUWn1+r7jHmDUX5xh/mvPL/QfTLGUixqYLiFK18G
	HNORvoGlceGQCyWoSksqLtJ2WpBoOY+90f2yQo1D/I1ET7raZqopkFReu+KqzX7O
	wKjF8w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkneutg0s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:11:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2e954d87b48so26265265ad.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 23:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793254283; x=1793859083; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+x+sbwYe22bkeBVNltT0oD7sdL3tpcHA5d0YP5FAtW0=;
        b=f0N665VA/zcH0uZqxVxirYI1G+5IBVV3h0bogg9c+Ql7du6tsOmOaJ9xKvGgFNFArm
         nWfJIUyXQM+KBDJQ/6C/vow//pH7bpdQJFFWBEabIv71sAxpXslwkimOf0hA0HUDUUoj
         9zwRtLPwcwkhQCNaGyShf9wHeFnq5m0d+dnhY7JFAg4QpbSvRCEQq81zCV7SafsQiwGs
         /7FmtDB6DdMR9tMmJXVkN9ZCCNm9Gw1BIw9cn8gjVFTBTLxLkiDqLj9NnOFoXP8HNEzX
         T9pW3kvMzqKxTeABiHf5Ytca3N10RpTD1tzz6AjbEqySL3nXq+RXfuqntSBt4dAYIvqu
         Cy/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793254283; x=1793859083;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+x+sbwYe22bkeBVNltT0oD7sdL3tpcHA5d0YP5FAtW0=;
        b=AQaa9YZBPEaRqfn4JozdJ4KZh0IBjxhFNU3AuuUqSk8siYogYvMk69ixEhRpEtzPz8
         bOEwz1Lx3kdSqiZEqNDnRBwggkSoaDVBbSz0rpFshM+cwVHuLpm9XTCE5IobEsjlA/lV
         yuTC9Ub4LBPmQ/URE9eHVW8ffE+yitQexFp9MY7dY0jY23h3F2ikney5/7KYmr0t3avk
         MgkeXsDz+q/hVijiTkMAxAprJ7T957VP+gW4C56GWrrtW6OQaTOZPjUqjjIP7FdeGCX5
         dH++p/Ckq3Mkv1k2yBsuT293+JEclbU6YVTkHbtl//lOFcY7r2oTSBBsibk/VOFQjNQ4
         n9YA==
X-Forwarded-Encrypted: i=1; AKwUvBzEwUMXgvIX0U3nSJ27rvfm4jxImNal2I/0xgMESG7RUZAdaV54E9ER96NJnXy9D4wGqw4HLnCdHgY=@lists.infradead.org
X-Gm-Message-State: AFq9FYIUE87Is/q0T0k6nTl1kTJajgsXBdgexE53qHrzbFkJ1uR1k1E6
	LANu6ArsJmYKyBVfZh3OJbn7Jju5VIwHacyQjieY62+7PQIUtmarnmFh5MSF3+XWMKUaV1QsdfK
	mLro8nqy+2oAmb4pZjV9IYjHd/8y3GgWLSJgHhH9gPT4LXNylx8fOoM9ui2G8Bf+KIyKn
X-Gm-Gg: AYBFou2ienHXXbC0I/Agph3gfmsaGrdT5grOLc7/u8+L1L0XAVFWFmV06JLHezdB3r2
	2J+M2Suy6wu0ubNAwtqfnycxcaFZ9tRuY3+eotnaNn1SZ2lMFdm157xvDSbE2R5A4ICOg+Zb7hN
	wE1hk115gWWGgSnFuFzVff9k37dPxnH7jzbZjJu5+JIbhRj7J0V71zZawsQ/1QsoGNcqFZyT67R
	wESr3db1ity27p8LcRvAYzXxJUfTdQSZkCqqnb1+4p12qvGhevn5zHITbDoIuuKzJiQ9syF5h5R
	LfKmxg52zX6kPPWo/Q+4dtp3pRBv5OiH1twR8N65kJjfBV7Bi3J0lvwJ+iHccEccJIckXsI5kFP
	QkuLurL3frSKjBsTXJ0MqAJSX6bz9lkkA8kyAMYlcr2BBGvfKYDdrIkxlAknc0frkPI4UXcnUnB
	S2dw==
X-Received: by 2002:a17:903:2ad0:b0:2e9:5eee:e087 with SMTP id d9443c01a7336-2eb00468db9mr41459435ad.43.1793254282663;
        Wed, 28 Oct 2026 23:11:22 -0700 (PDT)
X-Received: by 2002:a17:903:2ad0:b0:2e9:5eee:e087 with SMTP id d9443c01a7336-2eb00468db9mr41459235ad.43.1793254282182;
        Wed, 28 Oct 2026 23:11:22 -0700 (PDT)
Received: from [10.217.219.145] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6ca09casm28523965ad.67.2026.10.28.23.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 23:11:21 -0700 (PDT)
Message-ID: <a8104e92-990c-4e1a-aa4a-c97b9a801935@oss.qualcomm.com>
Date: Thu, 29 Oct 2026 11:41:17 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
 <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX9WtxmQk8mut2
 wY6YPNYi27h+vTSDlfn218xmSYLdConNeZ1H0Rwd7SSs25KJhvRYW34OIforIYSqJBR0KRBM4a3
 uWgY9n7pi9MSkhCtayfi8l30qHJQl+6lBQJpXK2/bI8OB1qv94MSZJ0zRd8P3qqU3mwGiBcrYju
 /pPnVF3H6mkQpfbj3AcNn49g5KcbgiBDn3CB3IDSUh/vuRU9SmF5O/2NDEoQQsSiHH2knpqfeER
 T0L9IOGdnYlrSbKpuJIFMt5jFBHCpJGLZQKFPiFFauOh/ZloMcySJPkDo6FLTZusPC+11TedgAw
 2m7MxumaI33gbSm8o9M0Fp/qHNt7X4LPzauF6eisd2QN9GhHs3xlEPpkLHKC5MLluPpet0VoHmW
 Y+d7hmKZrC+S7EIrjOGmeV9+BN5hsTN6SjdnnaFIa8Xp8YmYBrnYRNbDgqwt72f6j+SJUvbsRy1
 uwtAwUoJ61NTBnTkqGg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX823/VNk2pPSs
 MCCuGFhn2IQfsrkGCr1KolywQlN3qHajfthirVj+i/14c/W78LeMzu51xh0lMx9vfNDX4Jy9FUw
 xahEx+IGH5DA0nRFK9wlhhYdQ55d5aY=
X-Authority-Analysis: v=2.4 cv=LoAHWXdc c=1 sm=1 tr=0 ts=6ae2e38b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=KJAbbvmr6X-roC8CkJgA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 5sANv5zsGjoHytE6JLVZai6_1y0yzyUT
X-Proofpoint-ORIG-GUID: 5sANv5zsGjoHytE6JLVZai6_1y0yzyUT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1011 phishscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_231127_437252_3D6A97EB 
X-CRM114-Status: GOOD (  17.75  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/23/2026 3:53 PM, Konrad Dybcio wrote:
> On 10/22/26 12:43 PM, Prashanth K wrote:
>> Currently when we perform system suspend, the phy clocks aren't
>> turned off leading to power leakage. Prevent this by adding PM
>> suspend/resume callbacks for the qmp-combo-phy which toggles
>> clocks on/off correspondingly.
>>
>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>> ---
> 
> Well this still leaves pm_runtime_forbid() in the probe function..
> 

Not sure about the history behind this, I assume its for controlling RT
behavior from user-space.
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index c39ced168d03..f624195c9b84 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -4463,9 +4463,26 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
>>  	return 0;
>>  }
>>  
>> +static int __maybe_unused qmp_combo_pm_suspend(struct device *dev)
>> +{
>> +	if (pm_runtime_suspended(dev))
>> +		return 0;
>> +
>> +	return qmp_combo_runtime_suspend(dev);
>> +}
>> +
>> +static int __maybe_unused qmp_combo_pm_resume(struct device *dev)
>> +{
>> +	if (pm_runtime_suspended(dev))
>> +		return 0;
>> +
>> +	return qmp_combo_runtime_resume(dev);
>> +}
>> +
>>  static const struct dev_pm_ops qmp_combo_pm_ops = {
>>  	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
>>  			   qmp_combo_runtime_resume, NULL)
>> +	SET_SYSTEM_SLEEP_PM_OPS(qmp_combo_pm_suspend, qmp_combo_pm_resume)
> 
> You can instead do
> 
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +				pm_runtime_force_resume)
> 
> and as a related fix, we should probably throw a mutex guard into the
> runtime pm functions
> 
> Konrad

Yes we can do that as well. Will update in next patchset.

Thanks!
Prashanth K

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

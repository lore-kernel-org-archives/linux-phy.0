Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1206606A339
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 20:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bNKZ4KjY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=CZGd+AUG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hubpE5p1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2XYKPLDVMLYPPuzj0Aygx+FJBK6UGno059ArUbesF1E=; b=bNKZ4KjY/vXUYO13X3mMV4x3uN
	nfEDhrvoCL/arFOrH4+xiHsDeDguqkLLz3DugjgSUQ7imvjjkHAI3z42BfkN5OpxMWej90SorFVAw
	cAfLQuPYfYWZEN30OihJ6MfxwjY8bXtYvrjfGsUI0KoQTMM4qHkpCovPOiK5nw+9088GtXZHVvq5Q
	lZm5U42JkIVbm3hMmfCSlWY5hR8N1pVUixOKnmWSXFVUw2tVKeQqi8YeRb88thXNVFZS+Mu/dJKpt
	8icSFxorsLyd5Kp9w04Ed1ORn0Ko1t6nCt2aFgDj06rVYAtn/+FcopLRVmG+gQ/HyNrT+yVY2JCsY
	u2wX12/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAeD-00000007xTW-1d3i;
	Wed, 28 Oct 2026 20:53:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAeB-00000007xT4-2OEG
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 20:53:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SIPglF400513
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 20:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kqZBwE11J0t99+Ss0XjuV1OAcN2tykgCPm1UI9MOnHk=; b=CZGd+AUGG5FYlgYi
	WPFz46znG4KOED7sG2NZvn8FMa14cfExsEFcZd75edwjxP3mZRiK31XHy6m9xM7K
	esfFnYoJx+6nyMrxOVoKrkKI5XPOXXzFbzXdKnQ6TDsUBNC/OVeKOp17nFXAjUVI
	dkUgPxgO6ZRh35glVehM+9wItK1csJeSPu7irfHwQf1ZLdfr6X9OqlpZqKrKSj8j
	6C7EU1x86bcpk1U2bnU+4gUrJnU5mjbkwoYbmcc9BVJi4FdQkHD7z+skz6rTt1tw
	CCpkZt+/s5yfOZLlnQwlJd2L0fg/F+H/WCBlnTbRiwi6LS/V1V1J/erKz1NIQDuX
	Fw+AfQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtnhxg8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 20:53:22 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2237982eec.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 13:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793220802; x=1793825602; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kqZBwE11J0t99+Ss0XjuV1OAcN2tykgCPm1UI9MOnHk=;
        b=hubpE5p15oQcJTK2L+wZmW3SPSlHdhQqYljN/c0mebcR+hOZVukmC8PDvwHVk4Rt/W
         Fhlz2OPzjZtNpgfpqqW9OU1ulEajaZ2Gye8uRlVvbTiAICa0Id1scHhZsozHl6yM6LtI
         Rai+4+N7WxG6KanN1UbxXkZufO62h+JTrOT+pv6Lsefhqiu67AgqCBMzTxMnmTXUvfdo
         EGr6N+Ahclzhyf6eLxyjU/tQb1WqQIJj35A7/hX8QH0OeKr1yJK+WNbingI0I9k4rXfG
         C0gzBiIUFnF7x0MiT+gPEYsJM1UjFRKc0IL3Gcoo4/FJj+m9Z5HfVUpkuro5Y0EGYanH
         fQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793220802; x=1793825602;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kqZBwE11J0t99+Ss0XjuV1OAcN2tykgCPm1UI9MOnHk=;
        b=X6RhJE63FF4rpX4wPoc8y0wnzvZuIhwAK+GCyJ3TzS6gtV5pl/ZQvBY5WYvWDBhgvJ
         ZA1zppFwdMZKOOpr7MBtM6J0TMQX4nWJPuDcwBlK9r0S8GEFht3dbG/Uh0a595KHekNF
         dwHavB0hGqK+Cu/3XDxMr2bK0GFseewzDtXGb+9GxG/DBTK0J3hXCyUaiTIW03urRT6E
         fq2ZCPPond7DNi8YrCNgQmRtdSQihQ2+H50ww7Jx3yh2jKWahlzBnIo/Ur3SpzI1J6uZ
         Yx6UXbt53Xic5m9couPxy8xdhm1G7lfe97d4JVYSGglDbGoFAV7brZDZ38xVcwORxo1u
         5aKg==
X-Forwarded-Encrypted: i=1; AKwUvBz3TS6sGpXRMiOR7YN6RIEZ1qtMjzAxyZCtu8oYjBEPW/hiCikTmOztDrfsCNMAPAY5pWNHsFdJ7I8=@lists.infradead.org
X-Gm-Message-State: AFq9FYLSt+qudZMqYQkGnyqS3wlSgoO57AKDAy+ZtwSZmtQRKEgZYm2R
	lrRzFCoPYdwFUpU0F3bFeDFK/9uKzCiCyxzziM/8PbwZ8KWOqKXTO2GLXHjEyLkyrYIaWnyhCNS
	wHZYLEgfKi245AL1+ERVVMimBD/jyT/5X5aARhxtCGdkzjgqC86XEjAF38QW1iEQuzUSf
X-Gm-Gg: AYBFou0QGXXUfbdu71hkF+zZmAhxMVv+yhrX6Gx3TUaGHhqj/eOJXCKTt4qEAw3XAaZ
	oSNtbh0O/6zo8cUm2znictgsJkEHZ3cY+J7xiyDoz4dzB8Ft6L5vOhNhb5O8aJ0Y7eQCGPRD4Sa
	LGlrtH2V26JHMYnuebPX6mIP8BHp1/4driYvnAAGydswLFKdR+Fm5CeYx1vVfdWNr/YcAX/YflT
	rvn8SV7SjkkSw0jjPumvRK2ONKiVYiE4lw3SLUojSg+A1JNGXw+yX1UxsTCbTqnpbg5hRRzqvcx
	PzZNwBZDBjBWKRD75BhR9VyYZoJQGNHsAkf5q4jio68i5fm/gKPNTR5s9dD8fW6QK5JArIcUK28
	Yks4AgMMGvpQE1HQp5i24675pkOtJVzL8XLKV4JybzDQTvnUSl6UPSqpWOw6zW3krdJDWbNwiDp
	m2blt6CR5PAYAqtOwYTM85SXX6LMYoEOo=
X-Received: by 2002:a05:7300:a210:b0:366:83dd:4704 with SMTP id 5a478bee46e88-36a2014b145mr4791388eec.17.1793220801659;
        Wed, 28 Oct 2026 13:53:21 -0700 (PDT)
X-Received: by 2002:a05:7300:a210:b0:366:83dd:4704 with SMTP id 5a478bee46e88-36a2014b145mr4791335eec.17.1793220800867;
        Wed, 28 Oct 2026 13:53:20 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a2396276asm8729769eec.22.2026.10.28.13.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 13:53:20 -0700 (PDT)
Message-ID: <ad0793bf-b9be-4697-8ee0-0e787ab47ae8@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 13:53:19 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-mipi-csi2: Add support for single
 power-domain SoCs
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261028052047.2738893-1-anusha.nandi@oss.qualcomm.com>
 <auIWsA4gTWzwFGVo@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <auIWsA4gTWzwFGVo@lizhi-Precision-Tower-5810>
X-Proofpoint-GUID: 6TN0IIWfeMRVxKjTMH82H2TpJV97LK57
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA4MyBTYWx0ZWRfX5Lc08EYqkaOV
 /3aGIrXp7SNcWR/tXktx5dShjy0h7k87UmtLZx2A2QAcfrF0Z7WAL3keDSGNtoWR6/MIH34SdgZ
 K0ww404muBJG7Q9oKuvGktwUqJUqUnHU2/n2vKGno029bIYzazep+Cd9CmxTEfx1Smt/SzoeoXi
 47iysPdiKEh6ghlk7e0DqDOkwiXp7TfqMBDu4FPcMgRJEV3DaXS74NlI+trq7b941e2sEUz/BR4
 t5BBV6TBpb+1xUGVOX8kJnx3HNLhtyxewdq0aHfEDeAsNR8IuNeuCPc1fi4Sy0ct24IQH2mT/zb
 tNAQ4HCL9yOdLidRCpOVCUp15OmH+bdnF3y0bvrYgGlQMFy5yZ6aHbC7eH1ao/Zlkw2UvwgUMAH
 2VxvhYANaYJKsVuU5Mdu+u/FRKYCascCwHUzgjNlgg77nzv21YkUsuoMtpS1GcMFrbavwHqgXb4
 uXEGW6zNdglrs1NPZLg==
X-Authority-Analysis: v=2.4 cv=c/A+0h9l c=1 sm=1 tr=0 ts=6ae260c3 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=XTRlVznK_LMGRA666E0A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: 6TN0IIWfeMRVxKjTMH82H2TpJV97LK57
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA4MyBTYWx0ZWRfX0sQ5pI2vBAfZ
 1rpRb6PsGMeFZy6H8KC1s9CrWTv2iVyJ9FOZjpCd8A0MZrElv1hsO6K96xbxMBummBBqkX4fRym
 v48bII/PsALcehpZ/eegrWIeSintdl0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_06,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_135323_621326_ABA192DA 
X-CRM114-Status: GOOD (  23.93  )
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

Hi Frank,

dev_pm_domain_attach() checks for that case itself:

int dev_pm_domain_attach(struct device *dev, u32 flags)
{
   if (dev->pm_domain)
      return 0;
             ...
So the call is a safe no-op when the bus core already attached it
(the common case here), and does the real attach work if it somehow
hasn't. It's not redundant, it's what makes this call safe to use
unconditionally, unlike the devm_pm_domain_attach_list() call it
replaces, which has no such early-return and fails with -EEXIST
instead when already attached. That -EEXIST is the bug this patch
fixes.

Regards,
Anusha

On 10/28/2026 8:37 AM, Frank Li wrote:
> On Tue, Oct 27, 2026 at 10:20:47PM -0700, Anusha Arun Nandi wrote:
>> sa8775p, qcs8300 and sc7280 each list exactly one power-domain ("top")
>> on the CSI2 PHY node. For a device with a single power-domain phandle,
>> the generic platform-bus code (platform_probe() ->
>> dev_pm_domain_attach()) auto-attaches it via genpd_dev_pm_attach()
>> before the driver's own probe() runs. phy_qcom_mipi_csi2_probe() then
>> unconditionally calls devm_pm_domain_attach_list(), which fails with
>> -EEXIST because dev->pm_domain is already set, and the driver treats
>> that as fatal:
>>
>>   1. qcom-mipi-csi2-phy ace6000.phy: error -EEXIST: Failed to attach
>>   power-domain list
>>   2. qcom-mipi-csi2-phy ace6000.phy: probe with driver qcom-mipi-csi2-phy
>>   failed with error -17
>>
>> x1e80100 is unaffected: it lists three power-domains, so the generic
>> code does not auto-attach any of them (auto-attach only applies to
>> single-power-domain devices); the driver's explicit attach is the
>> only one that runs.
>>
>> For the single power-domain case, call dev_pm_domain_attach() instead
>> of devm_pm_domain_attach_list(): it returns early when dev->pm_domain
>> is already set, so csi2phy->pd_list is left NULL rather than built up
>> by hand. The three call sites that walk pd_list for genpd
>> performance-state scaling now guard against a NULL pd_list, which is
>> harmless since scaling is unused (scaled = false) on every SoC that has
>> a single "top" domain.
>>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 15 ++++++++-------
>>  1 file changed, 8 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> index c0a4fa20eaf0..ac25e1e5f1c3 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> @@ -43,7 +43,7 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
>>  	}
>>
>>  	pstate = 0;
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		unsigned int perf;
>>
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>> @@ -174,7 +174,7 @@ static int phy_qcom_mipi_csi2_power_on(struct phy *phy)
>>  unset_rate:
>>  	dev_pm_opp_set_rate(csi2phy->dev, 0);
>>
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>>  			continue;
>>
>> @@ -204,7 +204,7 @@ static int phy_qcom_mipi_csi2_power_off(struct phy *phy)
>>
>>  	dev_pm_opp_set_rate(csi2phy->dev, 0);
>>
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>>  			continue;
>>
>> @@ -233,6 +233,10 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
>>  	const char **pd_names;
>>  	int i;
>>
>> +	/* Single power-domain devices are already attached by the bus core. */
>> +	if (csi2phy->soc_cfg->num_genpds == 1)
>> +		return dev_pm_domain_attach(csi2phy->dev, 0);
>> +
> 
> why call dev_pm_domain_attach() if Single power-domain devices are already
> attached by the bus core?
> 
> Frank


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
